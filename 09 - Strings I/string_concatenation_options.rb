first = "Truong"
last = "Dang"
puts first + " " + last
puts

first += last
puts first
puts last
puts

puts first.concat(last) # TruongDangDang --> change
puts first # TruongDangDang
puts

first.prepend(last) # add to the front
puts first
puts

last << " Duc"
puts last # Dang Duc