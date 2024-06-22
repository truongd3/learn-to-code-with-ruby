# inject/reduce -- derive a new value from combining all array elements

# first block variable - the "aggregate" value, the value being calculated
# second block variable - the current array's element
# block calculation - what to send to next loop as "aggregate" value

p [10, 20, 30].reduce(0) { | sum  , number| sum + number}
#                 starting   first  second   block

#                                                           starting empty hash    first  second
color_freq = ["Red", "Black", "White", "Red", "Red", "Blue"].inject({}) do |      counts, color|
  if counts.key?(color)
    counts[color] += 1
  else
    counts[color] = 1
  end 
  counts
end

p color_freq