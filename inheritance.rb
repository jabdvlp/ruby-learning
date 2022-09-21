class Vehicle

    attr_accessor :odometer
    attr_accessor :gas_used

    def mileage
        return @odometer / @gas_used
    end

    def accelerate
        puts "Floor it!"
    end

    def sound_horn
        puts "Beep! Beep!"
    end

    def steer
        puts "Turn front 2 wheels."
    end

end


class Car < Vehicle
end

class Truck < Vehicle

    attr_accessor :cargo

    def load_bed(contents)
        puts "Securing #{contents} in the truck bed."
        @cargo = contents
    end

end

class Motorcycle < Vehicle
    
    def steer
        puts "Turn front wheel."
    end

end

truck = Truck.new
truck.accelerate
truck.steer
truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}."

car = Car.new
car.odometer = 11432
car.gas_used = 366
puts car.instance_variables

motorcycle = Motorcycle.new
motorcycle.steer
motorcycle.accelerate

puts "Lifetime MPG:"
puts car.mileage
