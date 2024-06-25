# Ruby 3.2 autoloads Set class when code uses it

require "set"

p Set.new([1, 2, 3]) #<Set: {1, 2, 3}>
p Set.new([1, 2, 3, 1, 1]) #<Set: {1, 2, 3}>

uniq_nums = Set.new([1, 2, 3, 11, 12, 13])
p uniq_nums.length