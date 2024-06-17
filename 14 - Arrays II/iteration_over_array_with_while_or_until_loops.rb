animals = ["Lion", "Zebra", "Monkey", "Cheetah"]

i = 0
while i < animals.length
  puts "The index is #{i} and the animal is #{animals[i]}"
  i += 1
end

# UNTIL
j = 0
until j == animals.length
  puts "The animal is #{animals[j]} at index #{j}!"
  j += 1
end