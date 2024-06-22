# Derived value - computed from another piece of state

class Rectangle
    attr_accessor :height, :width
    attr_reader :area

    def initialize(height, width)
        @height = height
        @width = width
        @area = height * width
    end
end

r = Rectangle.new(3, 5)
p r.area

r.height = 100
p r.area # doesn't change
p r.height