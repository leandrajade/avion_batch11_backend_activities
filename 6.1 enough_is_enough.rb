# FIND THE MIDDLE ELEMENT
# You need to create a function that when provided with a triplet, returns the index of the numerical element that lies between
# the other two elements. The input to the function will be an array of three distinct numbers (Haskell: a tuple).

def delete_nth(arr, n)
    counter = Hash.new(1)
    newArr = []
    
    arr.each do |num|
        if counter[num] <= n
            newArr << num
            counter[num] += 1
        else
            next
        end
    end 

    return "#{newArr}"

end

puts delete_nth([1,1,1,1],2)
puts delete_nth([20,37,20,21],1)
