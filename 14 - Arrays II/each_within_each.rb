is = [1, 2, 3, 4, 5]
js = [10, 11, 12]

is.each do |i|
  js.each do |j|
    puts "i is #{i} and j is #{j}"
  end
end