# map/collect -- create a new array by performing a consistent operation on all elements from an original array

birds = ["eagle", "falcon", "hawk", "pigeon", "sparrow"]

# lengths = []
# birds.each {|bird| lengths << bird.length}
# p lengths

lengths = birds.map {|bird| bird.length}
p lengths

initials = birds.collect {|bird| bird[0]}
p initials