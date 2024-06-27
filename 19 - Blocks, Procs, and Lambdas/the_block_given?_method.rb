# block_given? -- determine whether a block was provided to method invocation

def pass_control
    puts "I'm at the start of the pass_control method"
    if block_given? # try
        yield
    end # catch nothing
    puts "Now outside of yield"
end

pass_control # no error
