require_relative './controllers/controller.rb'
require_relative './dispatch.rb'
require_relative './models/deck.rb'
require_relative './models/card.rb'
require_relative './views/animation.rb'
require_relative './views/end.rb'
require_relative './views/player_two_cards.rb'
require_relative './views/deal_flop.rb'
require_relative './views/reveal_turn_river.rb'
require_relative './views/reveal_all_cards.rb'
include Views
include Animations

#Assigns the last 9 items in the @cards array to the below variables, which stays the same during a game
module Draw
attr_reader :a, :b, :c, :d, :e, :f, :g, :h, :i, :r, :s, :t, :u, :v, :w, :x, :y, :z

    def self.draw_cards
        card1 = Deck.new.draw
        card2 = Deck.new.draw
        card3 = Deck.new.draw
        card4 = Deck.new.draw
        card5 = Deck.new.draw
        card6 = Deck.new.draw
        card7 = Deck.new.draw
        card8 = Deck.new.draw
        card9 = Deck.new.draw
   
        $a = card1.value
        $b = card2.value
        $c = card3.value
        $d = card4.value
        $e = card5.value
        $f = card6.value
        $g = card7.value
        $h = card8.value
        $i = card9.value  

        $r = card1.suit
        $s = card2.suit
        $t = card3.suit
        $u = card4.suit
        $v = card5.suit
        $w = card6.suit
        $x = card7.suit
        $y = card8.suit
        $z = card9.suit

#For the purposes of representing the cards visually, the numbers are converted to A,J,Q,K if they are drawn
        arr = [$a,$b,$c,$d,$e,$f,$g,$h,$i]
        arr2 = arr.map do |num|
            case num 
            when 1 
                num = 'A'
            when 11
                num = 'J' 
            when 12
                num = 'Q'
            when 13
                num = 'K'
            else 
                num = num
            end 
        end 

     $a = arr2[0]
     $b = arr2[1]
     $c = arr2[2]
     $d = arr2[3]
     $e = arr2[4]
     $f = arr2[5]
     $g = arr2[6]
     $h = arr2[7]
     $i = arr2[8]

     ::Player_two_cards.draw_player_two_cards

        print "\n Select an option using the number below: 
        \n".red
        print "\n 1 - fold".red
        print "\n 2 - check".red
        print "\n 3 - quit game
        \n".red

        input = gets.chomp.downcase.strip.split(' ')
        command, params = input 

        case command 
            when '1'
                puts "\n You have chosen to fold in this round. 
                \n".red
            when '2'
                ::Deal_flop.deal_flop     
        
                print "\n Select an option using the number below: 
        \n".red
        print "\n 1 - fold".red
        print "\n 2 - check".red
        print "\n 3 - quit game
        \n".red

        input2 = gets.chomp.downcase.strip
        
                case input2 
                    when '1'
                        puts "\n You have chosen to fold in this round. 
                                        \n".red

                    when '2'
                        ::Reveal_turn_river.reveal_turn_river
               
                        print "\n Select an option using the number below: 
                        \n".red
                        print "\n 1 - reveal cards!".red
                        print "\n 2 - quit game
                        \n".red

                        input3 = gets.chomp.downcase.strip

                            case input3 
                            when '1'
                                ::Reveal_all_cards.reveal_all_cards
                            
                                    player_hand = []
                                    dealer_hand = []
                                    player_scores = []
                                    dealer_scores = []
                                    player_card_number = []
                                    dealer_card_number = []
                                    player_card_suits = []
                                    dealer_card_suits = []
                                    player_rank = 0
                                    dealer_rank = 0
                                    player_hand << card1 << card2 << card3 << card4 << card5 << card6 << card7
                                    dealer_hand << card8 << card9 << card3 << card4 << card5 << card6 << card7
                                                 
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
                                    
                                    #CALCULATING PLAYER'S SCORES
                                    player_card_1 = (order.index([player_hand[0].value, player_hand[0].suit]))
                                    player_card_2 = (order.index([player_hand[1].value, player_hand[1].suit]))
                                    player_card_3 = (order.index([player_hand[2].value, player_hand[2].suit]))
                                    player_card_4 = (order.index([player_hand[3].value, player_hand[3].suit]))
                                    player_card_5 = (order.index([player_hand[4].value, player_hand[4].suit]))
                                    player_card_6 = (order.index([player_hand[5].value, player_hand[5].suit]))
                                    player_card_7 = (order.index([player_hand[6].value, player_hand[6].suit])) 
                                    
                                    player_scores << player_card_1  << player_card_2 << player_card_3 << player_card_4  << player_card_5  << player_card_6  << player_card_7
                                   
                                    #Storing card values only for certain comparisons  
                                    player_card_number << player_hand[0].value << player_hand[1].value << player_hand[2].value << player_hand[3].value  << player_hand[4].value << player_hand[5].value << player_hand[6].value
                            
                                    player_card_number = player_card_number.compact.sort
                             
                                    dealer_card_number << dealer_hand[0].value << dealer_hand[1].value << dealer_hand[2].value << dealer_hand[3].value  << dealer_hand[4].value << dealer_hand[5].value << dealer_hand[6].value
  
                                    dealer_card_number = dealer_card_number.compact.sort
                                  
                                    #Storing only card suit values for certain comparisons  

                                    player_card_suits << player_hand[0].suit << player_hand[1].suit << player_hand[2].suit << player_hand[3].suit << player_hand[4].suit << player_hand[5].suit << player_hand[6].suit
                                    
                                    dealer_card_suits << dealer_hand[0].suit << dealer_hand[1].suit << dealer_hand[2].suit << dealer_hand[3].suit << dealer_hand[4].suit << dealer_hand[5].suit << dealer_hand[6].suit
                                    
                                    #CALCULATING DEALER'S SCORES
                                    
                                    card_1 = (order.index([dealer_hand[0].value, dealer_hand[0].suit]))
                                    card_2 = (order.index([dealer_hand[1].value, dealer_hand[1].suit]))
                                    card_3 = (order.index([dealer_hand[2].value, dealer_hand[2].suit]))
                                    card_4 = (order.index([dealer_hand[3].value, dealer_hand[3].suit]))
                                    card_5 = (order.index([dealer_hand[4].value, dealer_hand[4].suit]))
                                    card_6 = (order.index([dealer_hand[5].value, dealer_hand[5].suit]))
                                    card_7 = (order.index([dealer_hand[6].value, dealer_hand[6].suit])) 
                                  
                                    dealer_scores << card_1  << card_2 << card_3 << card_4  << card_5  << card_6  << card_7 

                                    dealer_scores = dealer_scores.compact.sort

                                        #DETECTING COMBOS FOR PLAYER

                                        #Checking for royal flush
                                    if player_scores.compact.combination(5).find {|a,b,c,d,e| a+b+c+d+e == 205 || a+b+c+d+e == 210 || a+b+c+d+e == 215 || a+b+c+d+e == 220}
                                    
                                    print "\n You have a royal flush
                                        \n".red
                                        player_rank = 1
                                            
                                            #checking for straight flush 
                                            elsif (player_card_number.each_cons(5).find {|a| a[1] - a[0] == 4}) && (player_card_suits.combination(5).find{|a,b,c,d,e| (a==b) && (b==c) && (c==d) && (d==e)})
                                                print "\n You have a straight flush
                                                \n".red
                                                player_rank = 2
                                        
                                            #checking for four of a kind
                                            elsif player_card_number.combination(4).find {|a,b,c,d| a+b+c+d == a* 4}
                                                print "\n You have four of a kind
                                                \n".red
                                                player_rank = 3
                                            
                                            #checking for full house 
                                            elsif (player_card_number.combination(3).find {|a,b,c| a+b+c ==a*3} ) && (player_card_number.combination(2).find {|a,b| a+b ==a*2} )
                                                print "\n You have a full house
                                                \n".red
                                                player_rank = 4
                                            
                                            #checking for flush
                                            elsif player_card_suits.combination(5).find{|a,b,c,d,e| (a==b) && (b==c) && (c==d) && (d==e)}
                                                print "\n You have a flush
                                                \n".red
                                                player_rank = 5

                                            # checking for straight
                                            # elsif player_card_number.each_cons(5).find {|a| a[1] - a[0] == 4}
                                            #     print "\n You have a straight
                                            #     \n".red
                                            #     player_rank = 6

                                            #checking for three of a kind
                                            elsif player_card_number.combination(3).find {|a,b,c| a+b+c == a* 3}
                                            print "\n You have three of a kind
                                            \n".red
                                            player_rank = 7

                                            #checking for two pairs
                                            elsif player_card_number.combination(4).find {|a,b,c,d| (a+b == a* 2) && (c+d == c*2)}
                                            print "\n You have two pairs
                                            \n".red
                                            player_rank = 8

                                            #checking for 1 pair
                                            elsif player_card_number.combination(2).find {|a,b| a+b == a* 2}
                                            print "\n You have a pair
                                            \n".red
                                            player_rank = 9

                                    end 

                                 #DETECTING COMBOS FOR DEALER

                                        #Checking for royal flush
                                        if dealer_scores.compact.combination(5).find {|a,b,c,d,e| a+b+c+d+e == 205 || a+b+c+d+e == 210 || a+b+c+d+e == 215 || a+b+c+d+e == 220}
                                    
                                        print "\n Dealer has a royal flush
                                            \n".red
                                            dealer_rank = 1
                                                
                                                #checking for straight flush 
                                                elsif (dealer_card_number.each_cons(5).find {|a| a[1] - a[0] == 4}) && (dealer_card_suits.combination(5).find{|a,b,c,d,e| (a==b) && (b==c) && (c==d) && (d==e)})
                                                    print "\n Dealer has a straight flush
                                                    \n".red
                                                    dealer_rank = 2
                                            
                                                #checking for four of a kind
                                                elsif dealer_card_number.combination(4).find {|a,b,c,d| a+b+c+d == a* 4}
                                                    print "\n Dealer has four of a kind
                                                    \n".red
                                                    dealer_rank = 3
                                                
                                                #checking for full house 
                                                elsif (dealer_card_number.combination(3).find {|a,b,c| a+b+c ==a*3} ) && (dealer_card_number.combination(2).find {|a,b| a+b ==a*2} )
                                                    print "\n Dealer has a full house
                                                    \n".red
                                                    dealer_rank = 4
                                                
                                                #checking for flush
                                                elsif dealer_card_suits.combination(5).find{|a,b,c,d,e| (a==b) && (b==c) && (c==d) && (d==e)}
                                                    print "\n Dealer has a flush
                                                    \n".red
                                                    dealer_rank = 5
    
                                                #checking for straight
                                                # elsif dealer_card_number.each_cons(5).find {|a| a[1] - a[0] == 4}
                                                #     print "\n Dealer has a straight
                                                #     \n".red
                                                #     dealer_rank = 6
    
                                                #checking for three of a kind
                                                elsif dealer_card_number.combination(3).find {|a,b,c| a+b+c == a* 3}
                                                print "\n Dealer has three of a kind
                                                \n".red
                                                dealer_rank = 7
    
                                                #checking for two pairs
                                                elsif dealer_card_number.combination(4).find {|a,b,c,d| (a+b == a* 2) && (c+d == c*2)}
                                                print "\n Dealer has two pairs
                                                \n".red
                                                dealer_rank = 8
    
                                                #checking for 1 pair
                                                elsif dealer_card_number.combination(2).find {|a,b| a+b == a* 2}
                                                print "\n Dealer has a pair
                                                \n".red
                                                dealer_rank = 9
                                        end 

                                        sleep 3
                                        if dealer_rank < player_rank
                                            print "\n YOU LOSE!
                                                \n".red.bold
                                                            
                                                ::Views::Animations.animation_player(Lose1)
                                                print "\n YOU LOSE!
                                                \n".red.bold
                                                ::Views::End.print_end

                                        elsif player_rank < dealer_rank
                                            print "\n YOU WIN!
                                                \n".red.bold
                                                ::Views::End.print_end
                                     
                                        elsif player_rank == dealer_rank
                                            print "\n It's a TIE!
                                                \n".red.bold
                                                ::Views::End.print_end

                                        end 


                            when '2'
                                puts "\n You have chosen to quit the game. 
                                \n".red
                            end 

                    when '3'
                        puts "\n You have chosen to quit the game. 
                        \n".red
                    else
                        p input2
                 end 
                end
    
            end
end        