# FIND THE UNIQUE NUMBER
# There is an array with some numbers. All numbers are equal except for one. Try to find it!
# Note: It’s guaranteed that array contains at least 3 numbers.
# Note: Avoid using .uniq method

def  find_uniq(arr)
    arr.tally.find{|key, val| val == 1}.first
end

puts find_uniq([1,2,1,1,1,1])
puts find_uniq([0,0,0.55,0,0])
