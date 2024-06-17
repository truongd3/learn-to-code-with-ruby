# any? -- check if any array element satisfies a condition
# all? -- check if every array element satisfies a condition

sports = ["soccer", "basketball", "baseball", "tennis", "gold"]

p sports.any? {|sport| sport.include?("ball")} # true
p sports.all? {|sport| sport.include?("ball")} # false