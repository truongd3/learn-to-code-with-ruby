def add_2_nums(num1, num2)
  puts "Solving math problem"
  puts num1 + num2
end # doesn't return anything

res = add_2_nums(1, 5) # print the puts statements
p res # nil

puts

def add_2_nums2(num1, num2)
  puts "Solving math problem 2"
  return num1 + num2
end # doesn't return anything

res2 = add_2_nums2(2, 7)
p res2

def add_2_nums3(num1, num2)
  puts "Solving math problem 3"
  return num1 + num2
  return num2 # just ignore, no error
end # doesn't return anything

puts

res3 = add_2_nums3(2, 11)
p res3