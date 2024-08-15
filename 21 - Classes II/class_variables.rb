# Class variable - data that lives on a class rather than an instance

class Bicycle
  @@count = 0

  def self.count
    @@count
  end

  def initialize
    @@count += 1
  end
end

a = Bicycle.new
p Bicycle.count # 1

b = Bicycle.new
p Bicycle.count # 2

c = Bicycle.new
p Bicycle.count # 3
