foods = ["Sup Cua", "Sup Ga", "Mi Y", "Pho"]

good_foods = foods.select {|food| food.include?("Sup")}
bad_foods = foods.reject {|food| food.include?("Sup")}
p good_foods
p bad_foods

good, bad = foods.partition {|food| food.include?("Sup")}
p good
p bad