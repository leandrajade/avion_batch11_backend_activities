#Polymorphism using Inheritance
class Instrument
    def play_instrument
        puts "playing the instrument"
    end
end

class Guitar < Instrument
    def play_instrument
        puts "plucking strings"
    end
end

class Piano < Instrument
    def play_instrument
        puts "pressing keys"
    end
end

## execute
puts "USING INHERITANCE"
instrument = Instrument.new 
instrument.play_instrument

instrument = Guitar.new
instrument.play_instrument

instrument = Piano.new
instrument.play_instrument


#Polymorphism using Duck-typing
class Instrument
    def play_instrument
        puts "playing the instrument"
    end

    def type(instrument)
        instrument.type
    end
end

class Guitar
    def type
        puts "plucking strings"
    end
end

class Piano
    def type
        puts "pressing keys"
    end
end

## execute
puts "USING DUCK-TYPING"
play = Instrument.new
instrument = Guitar.new
play.type(instrument)

instrument = Piano.new
play.type(instrument)