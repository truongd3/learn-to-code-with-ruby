fruits = ["Apple", "Orange", "Grape", "Banana"]
puts fruits.fetch(2) # Grape
# puts fruits.fetch(4) # IndexError
puts fruits.fetch(4, "Coconut") # Cocunut
puts fruits.fetch(4) # IndexError again