#The sum of the squares of the first ten natural numbers is, (1^2 + 2^2 + ... + 10^2) = 385
#The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)^2 = 55^2 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
# https://projecteuler.net/problem=6

difference = 0
sum = 0
sumOfSquares = 0 # sum of numbers (1^2 + 2^2 + ... + 100^2)
squareOfSum = 0 # squared of the sum of numbers 1-100 

for i in 1...101 do
    sum += i
    sumOfSquares += i ** 2
    squareOfSum = sum ** 2
end
  
difference = squareOfSum - sumOfSquares


## execute 

puts sumOfSquares
puts squareOfSum
puts difference