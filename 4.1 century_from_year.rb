# The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.
# Given a year, return the century it is in.

class CenturyCalculator
    def initialize(input)
        @input = input
    end

    def get_century
        century = @input / 100
        if century % 1 == 0
            return century.to_i
        else
            return century.to_i + 1
        end 
    end
end

## execute
puts "enter year"
year = gets.to_f

yearInput = CenturyCalculator.new(year)
puts yearInput.get_century
