# typed: true

module Internal
  class PayrollStatsService
    extend T::Sig

    PAYROLL_DAYS = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

    sig { void }
    def initialize
      @today = Time.zone.today
    end

    def get_past_invoices_per_day(date, payroll_time)
      Invoice.where(invoice_date: date, category: payroll_time)
    end

    def get_recent_forecasted_invoices_per_day(date, payroll_time)
      subquery = Invoice.unscoped
        .select("company_id, invoice_date, MAX(payroll_process_id) AS max_pp_id")
        .where(forecasted: true, category: payroll_time)
        .group(:company_id, :invoice_date)

      Invoice.unscoped
        .joins("INNER JOIN (#{subquery.to_sql}) AS mpp ON mpp.max_pp_id = invoices.payroll_process_id AND mpp.invoice_date = invoices.invoice_date AND mpp.company_id = invoices.company_id")
        .where(forecasted: true, status: "ready", invoice_date: date, category: payroll_time)
        .group("invoices.category").order("invoices.category")
    end

    def get_number_of_recent_forecasted_invoices_per_day(date, payroll_time)
      number_of_invoices_by_category = get_recent_forecasted_invoices_per_day(date, payroll_time).count
      number_of_invoices_by_category.reduce(0) do |sum, ((_category), count)|
        sum + count
      end
    end

    # sig { params(date: Date, payroll_time: T::Array[String]).returns(Integer) }
    def get_number_of_companies_running_forecasted_invoices_per_day(date, payroll_time)
      number_of_companies_by_category = get_recent_forecasted_invoices_per_day(date, payroll_time).distinct.count("invoices.company_id")
      number_of_companies_by_category.reduce(0) do |sum, ((_category), count)|
        sum + count
      end
    end

    sig { params(date: Date, payroll_time: T::Array[String]).returns(ActiveRecord::Relation) }
    def get_payments_per_day(date, payroll_time)
      Invoice.where(pay_date: date, category: payroll_time)
    end

    sig { params(date: Date, payroll_time: T::Array[String]).returns(Integer) }
    def get_sum_invoices_amount_per_day(date, payroll_time)
      get_payments_per_day(date, payroll_time).sum(&:net_due_amount)
    end

    sig { params(date: Date, payroll_time: T::Array[String]).returns(Integer) }
    def get_number_of_companies_processing_payroll_per_day(date, payroll_time)
      if date >= @today
        get_number_of_companies_running_forecasted_invoices_per_day(date, payroll_time)
      else
        get_past_invoices_per_day(date, payroll_time).select(:company_id).distinct.count
      end
    end

    sig { params(date: Date, payroll_time: T::Array[String]).returns(Integer) }
    def get_number_of_invoices_per_day(date, payroll_time)
      if date >= @today
        get_number_of_recent_forecasted_invoices_per_day(date, payroll_time)
      else
        get_past_invoices_per_day(date, payroll_time).count
      end
    end

    sig { params(start_monday: Date).returns(T::Hash[String, T.any(T::Hash[String, Integer], String)]) }
    def get_all_stats_of_specific_week(start_monday)
      stats_of_week = {}
      PAYROLL_DAYS.each do |day|
        current_date = start_monday + PAYROLL_DAYS.index(day)

        day_data = PayrollStatsWeekDataBuilder.new(
          day: day.upcase,
          date: current_date.strftime("%B %d, %Y"),
          morning_number_of_invoices: get_number_of_invoices_per_day(current_date, Invoice::MORNING_PAYROLL_CATEGORIES),
          morning_number_of_companies: get_number_of_companies_processing_payroll_per_day(current_date, Invoice::MORNING_PAYROLL_CATEGORIES),
          morning_sum_amount: get_sum_invoices_amount_per_day(current_date, Invoice::MORNING_PAYROLL_CATEGORIES),
          afternoon_number_of_invoices: get_number_of_invoices_per_day(current_date, Invoice::AFTERNOON_PAYROLL_CATEGORIES),
          afternoon_number_of_companies: get_number_of_companies_processing_payroll_per_day(current_date, Invoice::AFTERNOON_PAYROLL_CATEGORIES),
          afternoon_sum_amount: get_sum_invoices_amount_per_day(current_date, Invoice::AFTERNOON_PAYROLL_CATEGORIES)
        ).serialize

        stats_of_week[day] = day_data
      end
      stats_of_week
    end
  end
end
