team_members = Hash.new([])

p team_members["Compute"] # []
p team_members # {}

team_members["Compute"] << "Truong"
puts team_members["Compute"] # Truong
p team_members # still {} why?

draft = Hash.new do # no reference method
  []
end

puts

puts "CORRECT WAY"
correct = Hash.new do |hash, key|
  new_arr = []
  hash[key] = new_arr
  new_arr # return
end

p correct
p correct["Truong"] # []
p correct # {"Truong"=>[]}, because it follows the init instruction we wrote