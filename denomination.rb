# ask for the total amount: 3
# ask for the payment amount: 10

# output the least amount of bills and coins for the change
# 1x P5
# 2x P1

# class Money 
#     def initialize(oneThousand = 0, fiveHundred = 0, twoHundred = 0, oneHundred = 0, fifty = 0, twenty = 0, ten = 0, five = 0, one = 0)
#         @oneThousand =oneThousand
#         @fiveHundred =fiveHundred
#         @twoHundred =twoHundred
#         @oneHundred =oneHundred
#         @fifty =fifty
#         @twenty =twenty
#         @ten =ten
#         @five =five
#         @one =one
#     end
# end

class CashRegister 
    
    def set_total_amount(total_amount)
        @total_amount = total_amount
        return total_amount
    end

    def set_payment_amount(payment_amount)
        @payment_amount = payment_amount
        return payment_amount
    end

    def calculate_change
        change = @payment_amount - @total_amount
        return change
    end 
    
    def display_change
        minimum_denomination = self.get_change()
        minimum_denomination.each do |currency, count| 
            puts "your change is #{count}x of #{currency}"
        end
    end

    def get_change
        change = self.calculate_change()
        currencies = [1000, 500, 200, 100, 50, 20, 10, 5, 1]
        minimum_denomination = {} #location to set the currency and its count (currency:count)

        currencies.each do |currency| 
            if change >= currency
                minimum_denomination[currency] = change / currency #setting hash using currency as key and count as its values
                change -= (change / currency) * currency
            end
        end

        return minimum_denomination

        # until change == 0
        #     if change >= 1000
        #         @oneThousand = change / 1000
        #         change -=@oneThousand * 1000
        #         return @oneThousand
        #     elsif change >= 500
        #         @fiveHundred = change / 500
        #         change -= @fiveHundred * 500
        #         return @fiveHundred
        #           ...
        
    end
end

## execute

change = CashRegister.new()
puts change.set_total_amount(250)
puts change.set_payment_amount(1000)
change.get_change()
change.display_change()