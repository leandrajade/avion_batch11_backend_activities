# write a function that takes a string and return a new string with all vowels removed.
class Disemvowels
    def initialize(string)
        @string = string
    end

    def remove_vowels
        puts @string.gsub(/[aeiou]/i, "")
    end
end

## execute
troll = Disemvowels.new("broom broom boorm")~
troll.remove_vowels()