# Define a custom_index method that accepts a string and a search term.
# The method should return the first index position of the 
# search term within the string. If the search term does not exist,
# return nil. Do not use the built-in index method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_index("I am very handsome", "I")     => 0
# custom_index("I am very handsome", "e")     => 6
# custom_index("I am very handsome", "Z")     => nil
# custom_index("I am very handsome", "am")    => 2
# custom_index("I am very handsome", "ma")    => nil
def custom_index(str, search_term)
  str.each_char.with_index do |char, index|
    if char == search_term[0]
      remaining_chars = search_term[1..-1]
      match = true
      remaining_chars.each_char.with_index do |remaining_char, i|
        if str[index + i + 1] != remaining_char
          match = false
          break
        end
      end
      return index if match
    end
  end

  nil
end