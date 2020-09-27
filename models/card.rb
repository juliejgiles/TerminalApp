class Card 
    attr_reader :suit
        def initialize(value, suit)
            @value = value
            @suit = suit 
        end 
    
        def value 
            case @value
            when 1
                return :A 
            when 11
                return :J
            when 12 
                return :Q 
            when 13
                return :K 
            else 
                return @value
            end 
        end 
    end 