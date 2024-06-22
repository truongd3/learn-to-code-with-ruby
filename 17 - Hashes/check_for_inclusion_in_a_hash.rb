cars = {toyota: "Camry", chevrolet: "Aveo", ford: "F150", kia: "Soul"}

# include? -- check among hash keys
p cars.include?(:toyota) # true
p cars.include?("toyota") # false
# p cars.include?(toyota) # Error

# key? + has_key? -- check among hash keys


# value? + has_value? -- check among hash values
p cars.value?("Camry") # true
