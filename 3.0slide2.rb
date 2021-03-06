# Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.
# You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.

class Liter
    def initialize(hour)
        @hour = hour
    end

    def get_liters_of_water_per_hour
        liters = @hour * 0.5
        return liters
    end

    def round_off_liters
        liters = get_liters_of_water_per_hour()
        return liters.round()
    end

    def display_liters_of_water
        liters = round_off_liters()
        puts "the amount of water Nathan will drink is #{liters} liters for #{@hour} hours of cycling"
    end
end
## execute
puts "how many hours of cycling Nathan did?"
hour = gets.to_f

Nathan = Liter.new(hour)
puts Nathan.display_liters_of_water