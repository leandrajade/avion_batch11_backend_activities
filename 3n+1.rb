input = [0, 0] #expecting two integers

puts "enter first integer"
input[0]= gets.to_i
puts "enter second integer"
input[1]= gets.to_i

#modifying the original array instead of making a new sorted array; rearranging from lower to higher number
input.sort!

#passing the values to variables i and j to comply with the problem set variables
i = input[0]
j = input[1]

puts "this is the input #{input}"

result = []

cycle_set = []
cycle = nil
for n in (i..j)
    cycle = 0
    while n > 0
        if n == 1
            n = 1
            cycle+=1
            break
        end
        if n.odd?
            n = 3*n+1
            cycle+= 1
        elsif n.even?
            n = n/2
            cycle+= 1
        end
        #puts n
    end
    cycle_set.push(cycle)
end

max_cycle = cycle_set.max

result.push(i,j,max_cycle)
puts "#{result}"