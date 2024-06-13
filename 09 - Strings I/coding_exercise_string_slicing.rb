# Define a first_three_characters method that accepts a string.
# The method should return the first 3 characters of the string.
#
# Examples:
# The => indicates the expected return value
#
# first_three_characters("dynasty")   => "dyn"
# first_three_characters("empire")    => "emp"
def first_three_characters(word)
  word[0, 3]
end


# Define a five_from_the_end method that accepts a string.
# The method should return the last 5 characters of the string.
#
# Examples:
# The => indicates the expected return value
#
# five_from_the_end("dynasty")   => "nasty"
# five_from_the_end("rhinoceros") => "ceros"
def five_from_the_end(word)
  word[-5, 5]
end
