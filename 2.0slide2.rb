numbers = [35, -100, 10, 4, -6, 300, -60]
index = 0
smallest_int = nil

while index < numbers.length - 1 do
    if index == 0
        smallest_int = numbers[index]
    elsif numbers[index] < smallest_int
        smallest_int = numbers[index]
    end
    index += 1
end

puts smallest_int