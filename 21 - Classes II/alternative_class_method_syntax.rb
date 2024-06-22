class Vehicle
    attr_reader :wheels, :seats
    def self.hello
        puts "Hellow World!!!!"
    end

    def initialize(wheels, seats)
        @wheels = wheels
        @seats = seats
    end

    class << self
        def car
            new(4, 6) # self.new
        end

        def truck
            new(18, 2) # self.new
        end
    end 
end