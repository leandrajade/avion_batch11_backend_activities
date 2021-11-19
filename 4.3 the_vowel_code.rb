# Step 1: Create a function called encode() to replace
# all the lowercase vowels in a given string with
# numbers according to the following pattern:

# Step 2: Now create a function called decode() to
# turn the numbers back into vowels according to the
# same pattern shown above.

## 1st solution ##

def encode(string)
    string.tr("aeiou", "12345")
end
def decode(string)
    string.tr("12345", "aeiou")
end

## execute 
puts encode('magical')
puts decode('w2lc4m2')


## 2nd solution ##

def encode(string)
    vowels = { "a" => 1, "e" => 2, "i" => 3, "o" => 4, "u" => 5 }
    newString = []

    string.chars.each do |letter|
        if vowels.include? letter
            newString << vowels[letter]
        else
            newString << letter
        end
    end

    return "#{newString.join}"
end

def decode(string)
    int = { "1" => "a", "2" => "e", "3" => "i", "4" => "o", "5" => "u" }
    newString = []

    string.chars.each do |char|
        if int.include? char
            newString << int[char]
        else
            newString << char
        end
    end

    return "#{newString.join}"
end

##execute
puts encode('magical')
puts decode('w2lc4m2')
