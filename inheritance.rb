class Car

    attr_accessor :color, :mileage, :brand

    def initialize(color, mileage, brand)
        @color = color
        @mileage = mileage
        @brand = brand
        puts "The initialize of base car"
    end

    def show_color
        puts "The color of the car is #@color"
    end

end

class BlueCar < Car

    def initialize
        @color = "blue"
    end

end

c = BlueCar.new
c.show_color