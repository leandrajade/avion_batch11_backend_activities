# The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including
# the year 200, etc.

# Given a year, return the century it is in.

# require 'date'
class CenturyCalculator
    def initialize(input)
        @input = input
    end

    def get_century
        # now = Date.today
        century = (@input / 100) + 1

        return century
    end
end

## execute

yearNow = CenturyCalculator.new(1400)

puts yearNow.get_century