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
end

guitar = Guitar.new
p guitar.get_type
p guitar.get_wood