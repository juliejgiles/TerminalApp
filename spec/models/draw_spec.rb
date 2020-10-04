require_relative '../../draw.rb'

#A test to confirm the royal flush combo detection in the src/draw.rb file is working correctly.
#The first step to detecting a royal flush is to check that the card values based on the 'order' index add up to the combo_detection calculation
#In the test case of 7 cards, there are 5 cards which equate to a royal flush. They are not ordered, so this file also tests that the code can detect a combo from unordered cards.
#If the 'combo_detection' line is successful, the value will be truthy (which is the case here).
#Secondly, a royal flush must consist of the 5 card values of 10, J, Q, K, A. Again, the test case has 7 cards that are unordered and the code must detect the combo from unordered cards.
#Thirdly, the cards in the combo must be of the same suit. 

describe 'royal flush combo detection' do
    it 'should be able to calculate the value of the cards based on the order array and determine whether a combo exists'do
        player_scores = []
        order = [ [ '', ''],
        [2, :♦],   [2, :♣],  [2, :♥],  [2, :♠],
        [3, :♦],   [3, :♣],  [3, :♥],  [3, :♠],
        [4, :♦],   [4, :♣],  [4, :♥],  [4, :♠],
        [5, :♦],   [5, :♣],  [5, :♥],  [5, :♠],
        [6, :♦],   [6, :♣],  [6, :♥],  [6, :♠],
        [7, :♦],   [7, :♣],  [7, :♥],  [7, :♠],
        [8, :♦],   [8, :♣],  [8, :♥],  [8, :♠],
        [9, :♦],   [9, :♣],  [9, :♥],  [9, :♠],
        [10, :♦],  [10, :♣], [10, :♥], [10, :♠],
        [11, :♦], [11, :♣],[11, :♥],[11, :♠],
        [12, :♦], [12, :♣],[12, :♥],[12, :♠],
        [13, :♦], [13, :♣],[13, :♥],[13, :♠],  
        [14, :♦], [14, :♣],[14, :♥],[14, :♠]
       ]
        player_card_1 = order.index([10, :♦])
        player_card_2 = order.index([14, :♦])
        player_card_3 = order.index([12, :♦])
        player_card_4 = order.index([11, :♦])
        player_card_5 = order.index([6, :♥])
        player_card_6 = order.index([13, :♦])
        player_card_7 = order.index([12, :♥])
        player_scores << player_card_1  << player_card_2 << player_card_3 << player_card_4  << player_card_5  << player_card_6  << player_card_7
        player_scores = player_scores.sort
        combo_detection = player_scores.compact.combination(5).find {|a,b,c,d,e| a+b+c+d+e == 205 || a+b+c+d+e == 210 || a+b+c+d+e == 215 || a+b+c+d+e == 220}
        expect(combo_detection).to be_truthy
    end


    it 'should have the card values of 10, J, Q, K, A' do
        player_scores = []
        order = [ [ '', ''],
        [2, :♦],   [2, :♣],  [2, :♥],  [2, :♠],
        [3, :♦],   [3, :♣],  [3, :♥],  [3, :♠],
        [4, :♦],   [4, :♣],  [4, :♥],  [4, :♠],
        [5, :♦],   [5, :♣],  [5, :♥],  [5, :♠],
        [6, :♦],   [6, :♣],  [6, :♥],  [6, :♠],
        [7, :♦],   [7, :♣],  [7, :♥],  [7, :♠],
        [8, :♦],   [8, :♣],  [8, :♥],  [8, :♠],
        [9, :♦],   [9, :♣],  [9, :♥],  [9, :♠],
        [10, :♦],  [10, :♣], [10, :♥], [10, :♠],
        [11, :♦], [11, :♣],[11, :♥],[11, :♠],
        [12, :♦], [12, :♣],[12, :♥],[12, :♠],
        [13, :♦], [13, :♣],[13, :♥],[13, :♠],  
        [14, :♦], [14, :♣],[14, :♥],[14, :♠]
       ]
        player_card_1 = order.index([10, :♦])
        player_card_2 = order.index([14, :♦])
        player_card_3 = order.index([12, :♦])
        player_card_4 = order.index([11, :♦])
        player_card_5 = order.index([6, :♥])
        player_card_6 = order.index([13, :♦])
        player_card_7 = order.index([8, :♥])
        player_scores << player_card_1  << player_card_2 << player_card_3 << player_card_4  << player_card_5  << player_card_6  << player_card_7
        player_scores = player_scores.sort
        combo_detection = player_scores.compact.combination(5).find {|a,b,c,d,e| a+b+c+d+e == 205 || a+b+c+d+e == 210 || a+b+c+d+e == 215 || a+b+c+d+e == 220}
        expect(order[combo_detection[0]][0]).to eq 10 || 11 || 12 || 13 || 14
    end 

    it 'should be in the same suit' do
        player_scores = []
        order = [ [ '', ''],
        [2, :♦],   [2, :♣],  [2, :♥],  [2, :♠],
        [3, :♦],   [3, :♣],  [3, :♥],  [3, :♠],
        [4, :♦],   [4, :♣],  [4, :♥],  [4, :♠],
        [5, :♦],   [5, :♣],  [5, :♥],  [5, :♠],
        [6, :♦],   [6, :♣],  [6, :♥],  [6, :♠],
        [7, :♦],   [7, :♣],  [7, :♥],  [7, :♠],
        [8, :♦],   [8, :♣],  [8, :♥],  [8, :♠],
        [9, :♦],   [9, :♣],  [9, :♥],  [9, :♠],
        [10, :♦],  [10, :♣], [10, :♥], [10, :♠],
        [11, :♦], [11, :♣],[11, :♥],[11, :♠],
        [12, :♦], [12, :♣],[12, :♥],[12, :♠],
        [13, :♦], [13, :♣],[13, :♥],[13, :♠],  
        [14, :♦], [14, :♣],[14, :♥],[14, :♠]
       ]
        player_card_1 = order.index([10, :♦])
        player_card_2 = order.index([14, :♦])
        player_card_3 = order.index([12, :♦])
        player_card_4 = order.index([11, :♦])
        player_card_5 = order.index([6, :♥])
        player_card_6 = order.index([13, :♦])
        player_card_7 = order.index([8, :♥])
        player_scores << player_card_1  << player_card_2 << player_card_3 << player_card_4  << player_card_5  << player_card_6  << player_card_7
        player_scores = player_scores.sort
        combo_detection = player_scores.compact.combination(5).find {|a,b,c,d,e| a+b+c+d+e == 205 || a+b+c+d+e == 210 || a+b+c+d+e == 215 || a+b+c+d+e == 220}
        expect(order[combo_detection[0]][1]).to eq :♦
    end 
end 