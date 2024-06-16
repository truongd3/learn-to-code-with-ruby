fruits = ["Apple", "Orange", "Grape", "Banana"]
#          0        1          2        3
puts fruits[1]
p fruits[4] # nil
puts fruits[-1]

puts

fruits[1] = "Coconut"
puts fruits[1]

puts

fruits[4] = "Watermelon"
p fruits[4] # WORK!!!!! no error/nil

fruits[7] = "Peach"
p fruits # ["Apple", "Coconut", "Grape", "Banana", "Watermelon", nil, nil, "Peach"]