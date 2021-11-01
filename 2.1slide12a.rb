#example of Single Responsibility Principle
class Palindrome
    def initialize(string)
        @string = string
    end

    def remove_space
       return @string.gsub(" ","")
    end
    
    def reverse_string
        return reversed = remove_space().reverse
    end
    
    def is_palindrome
        if remove_space() == reverse_string()
            puts "yes"
        else
            puts "no"
        end
    end
end

## execute
puts "check if a word or phrase is a palindrome"
string = gets.chomp

Leann = Palindrome.new(string)
puts Leann.remove_space
puts Leann.reverse_string
Leann.is_palindrome
