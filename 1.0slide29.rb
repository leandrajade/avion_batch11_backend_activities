#1
arr = [1,3,5,7,9,11]
number = 3

if arr.include? number
    puts true
else
    puts false
end

#2
puts "enter a number"
input = gets.to_i

while input != nil 
    if input >= 0 && input <= 50
        puts "the input is between 0 and 50"
        input = nil
    elsif input >= 51 && input <= 100
        puts "the input is between 51 and 100"
        input = nil
    elsif input > 100
        puts "the input is above 100"
        input = nil
    else
        puts "enter a number between 0 to 100"
        input = gets.to_i
    end
end

#3
colours = ["blue", "black", "orange", "green", "yellow", "red", "purple", "teal"]

loop do
    colours.each do |colour|
        puts colour
    end

    puts "type your favourite colour or type 'STOP' to stop displaying the list"
    answer = gets.chomp
    if answer == "STOP"
        break
    end
end

#4
arr = [6,3,1,8,4,2,10,65,102]
newArr = []
arr.each do |num|
    if num % 2 == 0
        newArr.push(num)
    end
end
puts newArr
