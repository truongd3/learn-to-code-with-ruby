action_star = "The Rock" # global scope

def film_movie
  action_star = "John Cena" # local var, doesn't affect
  puts action_star
end

film_movie # John Cena
puts action_star # The Rock

# Error
def film_movie2
  puts action_star # var not declared
end

film_movie2