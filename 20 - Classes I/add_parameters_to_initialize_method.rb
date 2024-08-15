class Guitar
  attr_reader :type, :wood, :strings, :price # allow to get by just calling the name
  attr_writer :type # allow to set new value
  attr_accessor :price

  def initialize(type, wood, strings, price)
    @type = type
    @wood = wood
    @strings = strings
    @price = price
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings built by Truong"
  end
end

guitar = Guitar.new("Electric", "Timber", "4", "-1")
p guitar