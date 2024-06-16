puts "Big Mac".include? "B" # true
puts "Big Mac".include? "I" # false
puts "Big Mac".include? "Bi" # true
puts "Big Mac".include?("Bi") # true

alphabet = "a".."z"
puts alphabet.include?("z") # true
puts alphabet.include?("A") # false

ex_alphabet = "a"..."z"
puts ex_alphabet.include?("z") # false

puts alphabet.member?("z") # true
puts alphabet.member?("A") # false

puts alphabet === "z" # true
puts alphabet === "A" # false