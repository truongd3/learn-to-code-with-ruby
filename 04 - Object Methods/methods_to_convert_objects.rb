text = "3"
puts text
puts text.class # String
puts text.to_i
puts text.to_i.class # Integer

puts

puts "e".to_i # 0
puts "apples 3".to_i # 0
puts "3 apples".to_i # 3, take the first splited string
puts 3.9.to_i # 3
puts 3.1.to_i # 3

puts

puts text.to_f # 3.0
puts text.to_f.class # Float

puts

num = 14
puts num.to_s.class # String