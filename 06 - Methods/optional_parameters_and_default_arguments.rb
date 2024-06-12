def title_assigner(name, suffix = "Nguyen") # default value of parameter suffix
  "#{name}     #{suffix}"
end

puts title_assigner("Truong") # Truong Nguyen
puts title_assigner("Truong", "Dang") # Truong Dang



require 'active_support/core_ext/string'
puts "truong_dang".titleize