# freeze - make it immutable

name = "Truong".freeze
hobbies = ["Coding", "Sushi", "Basketball"].freeze

hobbies << "Work" # error

name_dub = name.dub # also freeze