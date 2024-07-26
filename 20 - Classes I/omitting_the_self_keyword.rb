class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @colors = ["Black", "Orange"]
  end

  def info
    "An #{@type} #{@wood} guitar with #{@strings} strings"
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings built by Truong"
  end

  def details
    puts "Inside details instance method: #{self}"
  end

  def nil_details
    puts "Is it nil? #{nil?}"
  end

  # self is the return of to_s
end

guitar = Guitar.new
puts guitar.details