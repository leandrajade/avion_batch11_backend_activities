# ask for the total amount: 3
# ask for the payment amount: 10

# output the least amount of bills and coins for the change
# 1x P5
# 2x P1

class Money 
    def initialize(oneThousand = 0, fiveHundred = 0, twoHundred = 0, oneHundred = 0, fifty = 0, twenty = 0, ten = 0, five = 0, one = 0)
        @oneThousand =oneThousand
        @fiveHundred =fiveHundred
        @twoHundred =twoHundred
        @oneHundred =oneHundred
        @fifty =fifty
        @twenty =twenty
        @ten =ten
        @five =five
        @one =one
    end
end

class CashRegister < Money
    def initialize(total_amount, payment_amount)
        @total_amount = total_amount
        @payment_amount = payment_amount
    end

    def calculate_change
        change = @payment_amount - @total_amount
        return change
    end

    def get_change
        change = self.calculate_change()


        until change == 0
            if change >= 1000
                @oneThousand = change / 1000
                change -=@oneThousand * 1000
                return @oneThousand
            elsif change >= 500
                @fiveHundred = change / 500
                change -= @fiveHundred * 500
                return @fiveHundred
            elsif change >= 200
                @twoHundred = change / 200
                change -= @twoHundred * 200
                return @twoHundred
            elsif change >= 100
                @oneHundred = change / 100
                change -= @oneHundred * 100
                return @oneHundred
            elsif change >= 50
                @fifty = change / 50
                change -= @fifty * 50
                return @fifty
            elsif change >= 20
                @twenty = change / 20
                change -= @twenty * 20
                return @twenty
            elsif change >= 10
                @ten = change / 10
                change -= @ten * 10
                return @ten
            elsif change >= 5
                @five = change / 5
                change -= @five * 5
                return @five
            elsif change >= 1
                @one = change / 1
                change -= @one * 1
                return @one
            end
        end
    end
end


wallet = CashRegister.new(200, 500)
puts wallet.get_change