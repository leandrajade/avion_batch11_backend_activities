# You need to create a function that when provided with a triplet, returns the index of the numerical element that lies between
# the other two elements. The input to the function will be an array of three distinct numbers (Haskell: a tuple).

def middle_element(arr)
    asc = arr.sort
    return arr.index(asc[1])
end

puts middle_element([7,4,3])
puts middle_element([2,3,1])
puts middle_element([5,14,10])
