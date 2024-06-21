salaries = {
  "Truong" => 150_000,
  "2DT" => 155_000,
  "Richard" => 160_000
}

p salaries.length
p salaries.fetch("2DT")
p salaries.fetch("2DTT", 0) # if doesn't exist, return 0