a = [1, 2, 3]
b = a

p a 
p b
p a.object_id # same
p b.object_id # same
p [1, 2, 3].object_id # different 1 
p [1, 2, 3].object_id # different 2

a.push(4)
p a 
p b # [1, 2, 3, 4]

b.push(5)
p a # [1, 2, 3, 4, 5]
p b