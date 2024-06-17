# use *

def addition(*numbers)
  sum = 0
  numbers.each {|num| sum += num}
  sum
end

p addition(1)
p addition(1, 10, 9)
p addition(-9, -11, 1, 10, 9)