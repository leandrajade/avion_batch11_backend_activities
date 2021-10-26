## an example encapsulation as it gives us the BMI of the Human instance without having a BMI property

class Human
    def initialize(weight, height)
        @weight = weight
        @height = height
    end

    def bmi
        @weight / @height ** 2
    end

    def result
        if bmi < 18.5
            puts "let's eat healthy and build some muscles"
        elsif bmi >= 18.5 && bmi <= 24.9
            puts "eat healthy!"
        elsif bmi >= 25.0 && bmi <= 29.9
            puts "let's burn fats and build muscles"
        elsif bmi >= 30
            puts "let's burn more fats and build muscles"
        end
    end
end



## execute

myBmi = Human.new(60, 1.57)
puts myBmi.bmi
puts myBmi.result

