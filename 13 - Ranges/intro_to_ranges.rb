# range -- sequence of numbers or letters in order
inclusive_nums = 1..5 # 1, 2, 3, 4, 5
exclusive_nums = 1...5 # 1, 2, 3, 4

puts inclusive_nums.class # Range
puts exclusive_nums.class # Range

puts inclusive_nums.first # 1
puts exclusive_nums.first # 1

puts inclusive_nums.last # 5
puts exclusive_nums.last # 5 weird haha

puts inclusive_nums.last(1) # 5
puts exclusive_nums.last(1) # 4

p inclusive_nums.last(3) # [3, 4, 5]
p exclusive_nums.last(3) # [2, 3, 4]