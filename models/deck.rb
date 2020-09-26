

class Deck 
    attr_reader :Cards, :shuffled_cards
    
    Cards = [
    {"2d":1},{"2c":2}, {"2h":3},{"2s":4},
    {"3d":5},{"3c":6}, {"3h":7},{"3s":8},
    {"4d":9},{"4c":10}, {"4h":11},{"4s":12},
    {"5d":13},{"5c":14}, {"5h":15},{"5s":16},
    {"6d":17},{"6c":18}, {"6h":19},{"6s":20},
    {"7d":21},{"7c":22}, {"7h":23},{"7s":24},
    {"8d":25},{"8c":26}, {"8h":27},{"8s":28},
    {"9d":29},{"9c":30}, {"9h":31},{"9s":32},
    {"10d":33},{"10c":34}, {"10h":35},{"10s":36},
    {"Jd":37},{"Jc":38}, {"Jh":39},{"Js":40},
    {"Qd":41},{"Qc":42}, {"Qh":43},{"Qs":44},
    {"Kd":45},{"Kc":46}, {"Kh":47},{"Ks":48},
    {"Ad":49},{"Ac":50}, {"Ah":51},{"As":52}
    ]
    


    @shuffled_cards = Cards.shuffle!

   def deal_cards
         
   end 
    
end 

p Deck::Cards
p @shuffled_cards

######################################################################
class Player 
    attr_accessor :name, :hand, :count, :total

    def initialize (name, hand, count, total)
        @name = name
        @hand = []
        @count = count
        @total = total
    end 
end 

human = Player.new "Person", [], 5, 0
computer = Player.new "Dealer", [], 5, 0

# class Player_hand (Player, Deck)
#     player.hand << @shuffled_cards[0]
#     p player.hand
# end 



