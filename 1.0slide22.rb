#Know if a number is a perfect square

puts "enter a number"

input = gets.to_i
is_squared = false

while i <= input
    squared = i * i
    if squared == input
        is_squared = true
        break
    else
        i += 1
    end
end

if is_squared
    puts true
else
    puts false
end