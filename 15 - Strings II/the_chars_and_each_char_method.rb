vehicle = "Spaceship"
characters = vehicle.split("")
p characters

characters2 = vehicle.chars
p characters2

puts

vehicle.each_char {|ch| puts "Current character is #{ch}"} 
vehicle.each {|ch| puts "Current character is #{ch}"} # NoMethodError