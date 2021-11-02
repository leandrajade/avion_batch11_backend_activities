require 'date'
class Date
    def initialize(date)
        @date = date
    end
    
    def set_date
        return Date.parse(@date)
    end

    def dayname
        note = set_date()
        DAYNAMES[note.wday]
    end
end

## execute 
note = Date.new("9-9-1969")
puts note.dayname