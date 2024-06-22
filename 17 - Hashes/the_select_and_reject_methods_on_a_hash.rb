recipe = {sugar: 3, flour: 10, salt: 1, pepper: 8}

# |key, value|
p recipe.select {|ingredient, teaspoons| teaspoons >= 5} # {:flour=>10, :pepper=>8}
p recipe.select {|ingredient, teaspoons| ingredient.length < 5} # {:salt=>1}