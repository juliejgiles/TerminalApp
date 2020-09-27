require_relative './models/card'

class Deck 
    def initialize
        @cards = [Card.new(1, :♦), Card.new(1, :♣), Card.new(1, :♥),Card.new(1, :♠),
                Card.new(2, :♦), Card.new(2, :♣), Card.new(2, :♥),Card.new(2, :♠),
                Card.new(3, :♦), Card.new(3, :♣), Card.new(3, :♥),Card.new(3, :♠),
                Card.new(4, :♦), Card.new(4, :♣), Card.new(4, :♥),Card.new(4, :♠),
                Card.new(5, :♦), Card.new(5, :♣), Card.new(5, :♥),Card.new(5, :♠),
                Card.new(6, :♦), Card.new(6, :♣), Card.new(6, :♥),Card.new(6, :♠),
                Card.new(7, :♦), Card.new(7, :♣), Card.new(7, :♥),Card.new(7, :♠),
                Card.new(8, :♦), Card.new(8, :♣), Card.new(8, :♥),Card.new(8, :♠),
                Card.new(9, :♦), Card.new(9, :♣), Card.new(9, :♥),Card.new(9, :♠),
                Card.new(10, :♦), Card.new(10, :♣), Card.new(10, :♥),Card.new(10, :♠),
                Card.new(11, :♦), Card.new(11, :♣), Card.new(11, :♥),Card.new(11, :♠),
                Card.new(12, :♦), Card.new(12, :♣), Card.new(12, :♥),Card.new(12, :♠),
                Card.new(13, :♦), Card.new(13, :♣), Card.new(13, :♥),Card.new(13, :♠)
        ].shuffle
    end 
    def draw 
        @cards.pop 
    end 

end 