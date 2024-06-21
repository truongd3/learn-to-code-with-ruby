def append_5(elements)
  elements << 5
end

values = [1, 2]
append_5(values)
p values # [1, 2, 5]

puts

def up1(name)
  name.upcase
end

name1 = "truog"
up1(name1)
p name1

puts

def up2(name)
  name.upcase!
end

name2 = "truog"
up2(name2)
p name2