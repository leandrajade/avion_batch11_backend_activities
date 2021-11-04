# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements
# with the same value next to each other and preserving the original order of elements.
class UniqueCharacters
    def initialize(input)
        @input = input.chars
    end

    def display_unique_in_order
        puts "#{self.sort_unique_in_order()}"
    end

    def sort_unique_in_order
        unique_characters = []
        i = 0

        while i <= @input.length - 1
            if @input[i] != @input[i+1]
                unique_characters.push(@input[i])
            end
            i+=1
        end

        return unique_characters
    end
end

## execute 
puts "enter a series of characters"
input = gets.chomp

test = UniqueCharacters.new(input)
test.display_unique_in_order()

# @input.each_with_index do |character, i|
#     if character[i] != character[i+1]
#         unique_characters.push(character[i])
#     end
# end