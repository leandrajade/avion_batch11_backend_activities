class Input
    def initialize(i, j)
      @i = i
      @j = j
    end

    def validate_input
        if @i > @j
            abort "first integer must be lower than the second integer" 
        end
    end

    def get_input_range(x,y)
        return (x..y).to_a #getting the range of 2 ints and putting it in an array
    end

    def get_result
        result = [@i, @j, get_max_cycle_length()]
        puts "#{result}"
    end

    def get_max_cycle_length
        max_cycle_length = 0
        for n in get_input_range(@i,@j)
            cycle_length = get_cycle_length(n)
            if (cycle_length > max_cycle_length)
                max_cycle_length = cycle_length
            end
        end
        return max_cycle_length
    end
   

    def get_cycle_length(n)
        cycle = get_cycle(n) #invoked a method that carries n (an array)
        return cycle.length #returns how many ints are inside the cycle arr
    end


    def get_cycle(n)
        cycle = [] #series of ints
        while n > 0
            cycle.push(n)
            if n == 1
                break
            end
            if n.odd?
                n = 3 * n + 1
            else
                n = n / 2
            end
        end
        return cycle
    end
end


puts "enter first integer"
i = gets.to_i
puts "enter second integer"
j = gets.to_i

numbers = Input.new(i,j)
numbers.validate_input
numbers.get_result