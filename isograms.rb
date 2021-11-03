class Isograms
    def initialize(string)
        @string = string
    end

    def to_lower_case
        return @string.downcase
    end

    def separate_characters
        string = self.to_lower_case()
        return string.chars
    end

    def is_isogram
        arr_string = self.separate_characters()
        if arr_string.detect{ |letter| arr_string.count(letter) > 1}
            return false
        else
            return true
        end
    end
end

## execute
puts "enter a word to check if it is an isogram or not"
word = gets.chomp

word1 = Isograms.new(word)
puts word1.is_isogram()

# letter_array = []
# i = 0
# while i < arr_string.length - 1
#     if letter_array.includes?arr_string[i]
#         return false 
#         break
#     else
#         letter_array.push(arr_string[i])
#     end
#     i+1
# end
# return true




# i = 0
# while i < arr_string.length - 1
#     current = arr_string[i]
#     nextt = arr_string[i+1]
#     if current == nextt
#         puts "false"
#         break
#     else
#         puts "true"
#         i += 1
#     end
# end           