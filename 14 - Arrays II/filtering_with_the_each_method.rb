fives = [5, 10, 15, 20, 25, 30, 35, 40]

fives.each do |value|
  if value.even?
    puts "#{value} is even"
  else
    puts "Eh eh"
  end
end