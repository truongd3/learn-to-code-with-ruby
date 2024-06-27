# yield - directly inside the method

def pass_control
    puts "I'm at the start of the pass_control method"
    yield # an inner single block
    puts "Now outside of yield"
end

pass_control {puts "Inside yield block"}