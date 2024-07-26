require 'date'
require 'active_support'
require 'active_support/core_ext'

today = Time.new(2024, 7, 12) # today
p today
p today.strftime("%A")
key = today.strftime("%A") + "|" + today.strftime("%B %d, %Y")
p key
formatted_date = today.strftime("%B %d, %Y")
puts formatted_date

p today-21
first_date = today.beginning_of_week - 21
p first_date


newhash = Hash.new
newhash[1] = 'a'
newhash[2] = 'b'
newhash[3] = 'c'
newhash[0] = 's'
p newhash.keys[2]

(0..4).each do |i|
  p i 
end