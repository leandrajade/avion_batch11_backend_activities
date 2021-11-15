# Step 1: Create a function called encode() to replace
# all the lowercase vowels in a given string with
# numbers according to the following pattern:

# Step 2: Now create a function called decode() to
# turn the numbers back into vowels according to the
# same pattern shown above.

def encode(string)
    string.tr("aeiou", "12345")
end
def decode(string)
    string.tr("12345", "aeiou")
end

puts encode('rowena')
puts decode('n23sf3fv')


# def encode(string)
#     vowels = ["a", "e", "i", "o", "u"]

#     newString = []

#     string.chars.each do |letter|
#         vowels.each do |v|
#             if letter == v
#                 newString << vowels.find_index(v) + 1
#             else
#                 newString << letter
#             end
#         end
#     end

#     return "#{newString}"
# end

# puts encode("edna")

# def vowel_censor(sentence)
#     vowels = "aeiou".chars
#     result = []
#     sentence.chars.each do |charachter|
#       if vowels.include?(charachter)
#         result << "X"
#       else
#         result << charachter
#       end
#     end
#     result.join("")
# end

# def encode(string)
#     vowels = "aeiou".chars
#     result = []

#     string.chars.each do |letter|
#         if letter == vowels
#             result << letter.index(vowels)
#         else
#             result << letter
#         end
#     end
#     result.join("")
# end

# puts encode("rowena")
# def encode(string)
#     vowels = {"a" => "1", "e" => "2", "i" => "3", "o" => "4", "u" => "5"}
#     separated = string.chars
#     newStr = []
#     for key, value in vowels
#         separated.each do |letter| 
#             if letter == key
#                 newStr << letter.gsub(letter, value)
#             else 
#                 newStr << letter
#             end
#         end
#     end
#     puts "#{newStr}"
# end

# puts encode("edna")
# class Encode
#     def initialize(string)
#         @string = string.chars
#     end

#     vowels = {"a" => "1", "e" => "2", "i" => "3", "o" => "4", "u" => "5"}
#     newStr = []

#     def get_values_from_vowels
#         vowels.each do |key, value|
#             return key
#         end
#     end

#     def encode_vowels
#         @string.each do |letter|
#             if letter == get_values_from_vowels
#                 newStr << @string.gsub(letter, values)
#             end
#         end
#     end

#     return newStr
    
# end

# ednu = Encode.new("ednu")
# ednu.encode_vowels

# string = string.gsub(key, vowels[value])
# splitted = string.chars 
# for key, value in vowels

#     encoded = nil
#     splitted.each do |lette~r|
#         if letter == key
#             letter.gsub(letter, value)
#             encoded.push(value)
#         end
#     end

#     puts encoded
# end

# vow = {"a":"1", "e":"2", "i":"3", "o":"4", "u":"5"}

# def encode(st):
#     for w in vow:
#         st = st.replace(w, vow[w])
#     return st

# def decode(st):
#     for k,v in vow.items():
#         st = st.replace(v, k)
#     return st