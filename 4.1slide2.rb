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