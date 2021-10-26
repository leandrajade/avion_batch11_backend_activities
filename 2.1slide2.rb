ints = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
result = []
negative_int = 0
positive_int = 0

for i in ints
    if i < 0
        negative_int += i
    elsif i > 0 
        positive_int += 1
    end
end

result.push(positive_int, negative_int)

## execute
puts result
puts result.class