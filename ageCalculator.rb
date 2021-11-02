class AgeCalculator
    def initialize(year, month, day)
        @year = year
        @month = month
        @day = day
    end

    def get_age
        now = Time.now
        age = (now.year - @year) - 1 #subtracting 1 year from age by default
        if now.month > @month || now.month == @month && now.day >= @day
            age  += 1 #using months and days to validate the subtracted 1 year from age
        end
        return age 
    end
end

## execute
puts "enter your birth year"
year = gets.to_i
puts "enter your birth month"
month = gets.to_i
puts "enter your birth day"
day = gets.to_i

birthday = AgeCalculator.new(year,month,day)
puts birthday.get_age



