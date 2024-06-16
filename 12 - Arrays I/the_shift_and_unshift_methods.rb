# shift -- pop from the beginning
units = ["m", "kg", "sec", "atm"]

p units.shift # "m"
p units # ["kg", "sec", "atm"]

p units.shift(2) # ["kg", "sec"]
p units # ["atm"]