#1
array =  [1,2,3,4,5,6,7,8,9,10]

array.each do |i|
   puts i
end



#2
h = {"a" => "1", "b" => "2", "c" => "3", "d" => "4"}

#getting the value of :b key
h["b"] 

puts "#{h["b"]}"

#adding another key:value pair to the array 
h["e"] = "5"

#printing the hash
h.each do |key, value|
    puts "#{key}:#{value}"
end



#3
contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

contacts["John Cruz"] = { :email => contact_data[0][0], :address => contact_data[0][1], :phone => contact_data[0][2]}
contacts["Avion School"] = { :email => contact_data[1][0], :address => contact_data[1][1], :phone => contact_data[1][2]}

puts "#{contacts}"


#4
puts "how old are you?"
age = gets.to_i

puts <<-AGE
    "in 10 years you will be: #{age + 10}"
    "in 20 years you will be: #{age + 20}"
    "in 30 years you will be: #{age + 30}"
    "in 40 years you will be: #{age + 40}"
AGE