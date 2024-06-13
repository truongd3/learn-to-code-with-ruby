def grade(gpa, major)
  if gpa == 4
    puts "A"
  elsif gpa == 3.5
    puts "B+"
  elsif gpa == 3
    puts "B"
  elsif gpa == 2.5
    puts "C+"
  else
    puts "C"
  end

  case major
  when "CS"
    puts "Computer Science"
  when "IS"
    puts "Information System"
  when "HCI"
    puts "Human Computer Interaction"
  else # default
    puts "N/A"
  end
end

grade(1.3, "CS")

# No `break` in Ruby's case