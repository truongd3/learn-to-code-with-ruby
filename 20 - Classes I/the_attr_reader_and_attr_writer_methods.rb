class Guitar
  attr_reader :type, :wood, :strings, :price # allow to get by just calling the name
  attr_writer :type # allow to set new value

  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @colors = ["Black", "Orange"]
    @price = 1500
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings built by Truong"
  end

  def price=(new_price)
    @price = new_price
  end
end

guitar = Guitar.new
p guitar.type
p guitar.wood

guitar.type = "Electric"
p guitar.type