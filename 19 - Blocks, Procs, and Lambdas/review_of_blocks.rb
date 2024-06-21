# BLOCKS

# A block is a chunk of code to execute.
# An argument is an object we pass a method, while  a block is a procedure
# A block cannot exist without a method.
# A block is a temporary construct.

# BLOCKS vs METHODS

# Methods can be invoked over and over.
# A block is used only once, then disappers.
# Methods capture the repeatable steps of a procedure.
# A block captures the custom step of a procedure.

[1, 2, 3].each {|val| puts val*2}