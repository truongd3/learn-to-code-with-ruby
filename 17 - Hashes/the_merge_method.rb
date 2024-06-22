recipe1 = {sugar: 3, flour: 3, salt: 1, pepper: 8}
recipe2 = {chilli: 1, garlic: 2, butter: 100, sugar: 5, flour: 5}

p recipe1.merge(recipe2) # take recipe2 if there are comman keys
p recipe1 # same
p recipe2 # same

puts

p recipe2.merge(recipe1) # take recipe1 if there are comman keys

puts

recipe1.merge!(recipe2)
p recipe1 # update
p recipe2 # same