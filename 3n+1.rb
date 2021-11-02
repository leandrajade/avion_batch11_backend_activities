#link for the problem set: https://onlinejudge.org/external/1/100.pdf
puts "enter first integer"
i= gets.to_i
puts "enter second integer"
j= gets.to_i

result = []
cycle_set = []

for n in (i..j).to_a
    cycle = []
    while n > 0
        cycle.push(n)
        if n == 1
            break
        end
        if n.odd?
            n = 3*n+1
        else
            n = n/2
        end
    end
    cycle_set.push(cycle.length)
end

max_cycle = cycle_set.max() 
result.push(i,j,max_cycle)

puts "#{result}"


#changing commit comment