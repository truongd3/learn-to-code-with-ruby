# Proc - an object representation of a BLOCK
# optimization of a function

to_cubes = Proc.new { |number| number ** 3 }

to_cubes = Proc.new do |number|
  number ** 3
end

a = [1, 2, 3, 4, 5]
p a.map(&to_cubes)