# select - filter array for elements that satisfy a condition
# reject - filter array for elements that DON'T satisfy a condition

words = ["race", "selfie", "sentence", "lv", "racecar"]

palindromes = words.select {|word| word == word.reverse}
p palindromes

long = words.select {|word| word.length > 4}
p long

animals = ["cjeetah", "cat", "dog", "lion", "hippo"]
no_initial_c = animals.reject {|animal| animal[0] == "c"}
p no_initial_c