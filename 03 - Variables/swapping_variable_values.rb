a, b = 5, 10
puts a, b

puts

# Approach 1: Classic
temp = a
a = b 
b = temp
puts a, b

# Approach 2: Same as Python
a, b = b, a