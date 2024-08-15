# Add functionality to an existing Ruby class

class String
  def count_vowels
    self.downcase.count("aeiou")
  end
end