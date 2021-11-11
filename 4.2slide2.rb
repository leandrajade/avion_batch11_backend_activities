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


# class JoinList
#    def initialize(input, result)
#       @input = []
#       @result = []
#    end

#    def get_names()
#       @input.each do |person|
#          person.each do |key, name|
#             return @result.push(name)
#          end
#       end
#    end

#    def set_new_list
#       new_list = get_names()
#       if new_list.length == 1
#          return new_list
#       elsif new_list.length == 2
#          return new_list.join(" & ")
#       elsif new_list.length > 2
#          last_name = new_list.pop()
#          return new_list.join(", ") + " & #{last_name}"
#       end
#    end
# end

# showList = JoinList.new(list = [ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}, {name: 'Michael'}])
# showList.set_new_list()

# def list(names)

#    # if names.length > 0
#    #    namesList = names.map do |name|
#    #    finalName = namesList.pop();
#    #    return namesList.length ? namesList.join(', ') + "& #{finalName}" : finalName end
#    # end
# end

# class FormatList
#    def initialize(list)
#       @list = []
#    end

#    def get_result
#       result = []
#       @list.each do |person|
#          person.each do | key, name |
#             return result.push(name)
#          end
#       end
#    end

#    def get_final_list
#       result = self.get_result()

#       if result.length == 1
#          puts result
#       elsif result.length == 2
#          puts result.join(" & ")
#       elsif result.length > 2
#          last_name = result.pop()
#          puts result.join(", ") + " & #{last_name}"
#       end

#       return result
#    end
# end

# ## execute

# NameList = FormatList.new([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}, {name: 'Michael'}] )
# NameList.get_final_list()
