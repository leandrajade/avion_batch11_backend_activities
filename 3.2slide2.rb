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
            curr = @input[i]
            nexx = @input[i + 1]

            if curr != nexx
                unique_characters.push(curr)
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
