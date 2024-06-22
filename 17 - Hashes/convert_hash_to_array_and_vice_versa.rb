# to_a -- convert hash to array
# to_h -- convert array to hash

spice_girls = {
  scary: "Melanie Brown",
  sporty: "Amy Luong",
  baby: "Emma Bunton",
  ginger: "Geri Halliwell",
  posh: "Victoria Beckam"
}
p spice_girls.to_a # 2D array, separated by comma
# [[:scary, "Melanie Brown"], [:sporty, "Amy Luong"], [:baby, "Emma Bunton"], [:ginger, "Geri Halliwell"], [:posh, "Victoria Beckam"]]

puts

power_ranges = [
  [:red, "Truong"],
  [:black, "Tri"],
  [:pink, "Tho"],
  [:yellow, "An"]
]
p power_ranges.to_h
# {:red=>"Truong", :black=>"Tri", :pink=>"Tho", :yellow=>"An"}