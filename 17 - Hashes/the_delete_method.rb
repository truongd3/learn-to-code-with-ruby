# delete -- remove a key-value pair
recipe = {sugar: 3, flour: 10, salt: 1, pepper: 8}

p recipe

recipe.delete(:sugar)
p recipe

p recipe.delete(:salt) # return the value
p recipe