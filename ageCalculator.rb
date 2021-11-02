# compute age from birthdate
require 'date'
class AgeCalculator
    def initialize(birthday)
        @birthday = birthday
    end

    def set_birthday
        return Date.parse(@birthday)
    end

    def get_age
        now = Date.today
        birthday = self.set_birthday()
        age = (now.year - birthday.year) - 1 #subtracting 1 year from age by default
        if now.month > birthday.month || now.month == birthday.month && now.month >= birthday.day
            age += 1 #using months and days to validate the subtracted 1 year from age
        end
        return age 
    end
end

## execute

birthday = AgeCalculator.new("24-7-1970")
puts birthday.set_birthday
puts birthday.get_age




