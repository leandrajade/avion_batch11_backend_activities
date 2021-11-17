# Given: an array containing hashes of names
# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated
# by an ampersand.

# list = [ {name: 'Bart'}, {name: 'Lisa'}]
# list = [ {name: 'Bart'}]
list = [ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}, {name: 'Michael'}]

result = []

list.each do |person|
   person.each do |key, name|
      result.push(name)
   end
end

if result.length == 1
   puts result
elsif result.length == 2
   puts result.join(" & ")
elsif result.length > 2
   last_name = result.pop()
   puts result.join(", ") + " & #{last_name}"
end
