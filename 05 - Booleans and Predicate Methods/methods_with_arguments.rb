# include --> check if a substring exists in the original string
# <Original string>.include? <space> <Target substring!>
puts "Big Mac".include? "B" # true
puts "Big Mac".include? "I" # false
puts "Big Mac".include? "Bi" # true
puts "Big Mac".include?("Bi") # true

puts "Big Mac".include? "B", "M" # --> ArgumentError