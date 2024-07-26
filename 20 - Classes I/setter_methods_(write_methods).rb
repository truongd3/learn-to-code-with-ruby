class Guitar
  def initialize
    @type = "Acoustic"
    @wood = "Alder"
    @strings = 6
    @colors = ["Black", "Orange"]
  end

  def to_s
    "An #{@type} #{@wood} guitar with #{@strings} strings built by Truong"
  end

  def get_type
    @type
  end

  def get_wood
    @wood
  end

  def get_strings
    @strings
  end

  def set_strings(val)
    @strings = val
  end
end

guitar = Guitar.new
p guitar.get_type
p guitar.get_wood

guitar.set_strings(100)
p guitar.get_strings