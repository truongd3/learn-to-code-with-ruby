# Class method - method invoked on the class rather than an instance
# Can be called on a class even if instances don't exist

class Vehicle
    attr_reader :wheels, :seats
    def self.hello
        puts "Hellow World!!!!"
    end

    def initialize(wheels, seats)
        @wheels = wheels
        @seats = seats
    end

    
end

Vehicle.hello
p 10 + 20 # + is also a class method