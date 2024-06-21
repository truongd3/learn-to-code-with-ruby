a = [1, 2, 3]
b = a.dup
c = a.clone

p a 
p b 
p c
p a.object_id # different
p b.object_id # different
p c.object_id # different
p a.class # Array
p b.class # Array
p c.class # Array

a.push(4)
p a
p b
p c

