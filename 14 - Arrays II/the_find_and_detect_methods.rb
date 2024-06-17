# find/detect - find first array element that match condition

words = ["Hello", "Vietnam", "eat", "drink", "sleep"]

p words.select {|word| word.include?("e")} # ["Hello", "Vietnam", "eat", "sleep"]
p words.find {|word| word.include?("e")} # "Hello"