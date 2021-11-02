class AgeCalculator
    def initialize(year, month, day)
        @year = year
        @month = month
        @day = day
    end

    def get_age
        now = Time.now
        age = now.year - (@year + 1) 

        if now.month > @month || now.month == @month && now.day >= @day
            age  += 1
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



