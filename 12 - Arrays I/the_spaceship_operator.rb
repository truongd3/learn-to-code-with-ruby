# Spaceship Operator <=>
# Returns -1, 0, 1, or nil

# Return 0 if 2 values are equal
puts 5 <=> 5
puts [3, 4, 5] <=> [3, 4, 5]

# Return -1 if LHS value is smaller
puts 5 <=> 6
puts [3, 4, 5] <=> [3, 4, 6]

# Return 1 if LHS value is greater
puts [3, 4, 10] <=> [3, 4, 6]
puts [3, 5, 10] <=> [3, 4, 11] # compare from left to right
puts "B" <=> "A"

# Return nil if the values are incomparable
p 1 <=> [3, 6, 4]