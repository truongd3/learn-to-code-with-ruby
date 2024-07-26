class Guitar
  def initialize
    puts "Object Guiter created"
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
end

guitar1 = Guitar.new
guitar2 = Guitar.new

p guitar1
puts guitar1

p guitar2.info
puts guitar2.class
puts guitar2.to_s # orignially #<Guitar:0x000000010057e418>