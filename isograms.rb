#Isogram is a word or phrase with no repeating letters
class Isograms
    def initialize(string)
        @string = string.downcase.chars #set to lower case and transform into an array of string
    end

    def is_isogram
        if @string.detect{ |letter| @string.count(letter) > 1}
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

# letters = self.separate_characters()
#     letters_present = [];
#     letters.each do |letter|
#         if letters_present.include? letter
#             return false
#         end
#         letters_present.push(letter)
#     end
#     return true
# end