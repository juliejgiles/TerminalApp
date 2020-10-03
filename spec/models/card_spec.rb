require_relative '../../models/card.rb'

#Test for the 'Card' class in the src/models/card.rb file 
describe 'Card class' do 
    it 'should be able to be able to be assigned a card number and suit' do 
        card = Card.new(1, :♦)
        expect(card.value).to eq 1
        expect(card.suit).to eq :♦
        expect(card).to be_instance_of Card
    end 

    it 'should not have the same card drawn twice in the same game' do 
        deck = [Card.new(1, :♦), Card.new(1, :♣), Card.new(1, :♥),Card.new(1, :♠),
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
        Card.new(13, :♦), Card.new(13, :♣), Card.new(13, :♥),Card.new(13, :♠)].shuffle
        deck1 = deck.uniq()
        expect(deck1.length).to eq 52
    end 

    it 'should have a card value that is not a string when instantiated in the game' do 
        card = Card.new(2, :♦)
        expect(card.value).to be_a_kind_of Integer
    end 

    it 'should have a suit value that is a symbol when instantiated in the game' do 
        card = Card.new(3, :♦)
        expect(card.suit).to be_a_kind_of Symbol
    end 

    it 'should be a truthy value' do 
        card = Card.new(4, :♦)
        expect(card).to be_truthy
    end 
end 