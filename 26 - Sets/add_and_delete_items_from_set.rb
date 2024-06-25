require "set"

uniq_nums = Set.new([1, 2, 3, 11, 12, 13])
p uniq_nums.class

uniq_nums.add(20)
p uniq_nums

uniq_nums.add(20) # doesn't work