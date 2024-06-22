# public -- can be invoked by any object
# private -- be invoked by internal methods
# protected -- be invoked by internal methods and objects of the same classs

# different from Java, C++

class Car

    def initialize(age, miles)
        base_value = 20_000
        age_deduction = age * 1000
        miles_deduction = miles / 10
        @value = base_value - age_deduction - miles_deduction
    end

    def compare_car_with(car)
        self.value > car.value ? "Your car better" : "Your car worse"
    end

    private def value
        @value
    end

    def compare_car_with2(car)
        self.value2 > car.value2 ? "Your car better" : "Your car worse"
    end

    protected def value2
        @value
    end
end

civic = Car.new(3, 30000)
fiat = Car.new(1, 20000)
dodge = Car.new(8, 100000)

puts civic.compare_car_with2(fiat)
# puts civic.compare_car_with(fiat) # doesn't work bc value is private, compare_car_with cannot use