puts Time.new # yyyy-mm-dd HH:MM:SS -timezone
puts Time.now # yyyy-mm-dd HH:MM:SS -timezone
puts

# Parameters: year, month, day, hour, minute, seconds
puts Time.new(2024) # begin of 2024
puts Time.new(2024, 5) # May 2024
puts Time.new(2024, 6, 24) # June 24, 2024
puts Time.new(2024, 6, 24, 23, 39)
puts

puts Time.new.year
puts Time.new.month
puts Time.new.sec
puts Time.new.min
puts Time.new.hour
puts 

puts Time.now.monday? # boolean