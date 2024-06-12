# Argument - object, concrete value
# Blocks - a procedure, collection of code

5.times {puts "Hello world"} # block

5.times do # block
  puts "How are you?"
  puts 1 + 2
end

value = 5.times do # block
  puts "Fine"
end
puts value # do the block and print 5 at the end