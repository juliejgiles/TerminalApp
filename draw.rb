require_relative './controllers/controller.rb'
require_relative './models/deck.rb'
require_relative './models/card.rb'
require_relative './views/animation.rb'
require_relative './views/end.rb'
require_relative './views/player_two_cards.rb'
require_relative './views/deal_flop.rb'
require_relative './views/reveal_turn_river.rb'
require_relative './views/reveal_all_cards.rb'
require 'yaml'
require 'artii'
include Views
include Animations

#Assigns the first 9 items in the $Deck constant array to the below variables, so that the card values and suits stay the same for the game 
#(no 2 cards are drawn twice in a game)
module Draw
attr_reader :a, :b, :c, :d, :e, :f, :g, :h, :i, :r, :s, :t, :u, :v, :w, :x, :y, :z

    def self.draw_cards
        $card1 = $DECK[0]
        $card2 = $DECK[1]
        $card3 = $DECK[2]
        $card4 = $DECK[3]
        $card5 = $DECK[4]
        $card6 = $DECK[5]
        $card7 = $DECK[6]
        $card8 = $DECK[7]
        $card9 = $DECK[8]

        $a = $card1.value
        $b = $card2.value
        $c = $card3.value
        $d = $card4.value
        $e = $card5.value
        $f = $card6.value
        $g = $card7.value
        $h = $card8.value
        $i = $card9.value  

        $r = $card1.suit
        $s = $card2.suit
        $t = $card3.suit
        $u = $card4.suit
        $v = $card5.suit
        $w = $card6.suit
        $x = $card7.suit
        $y = $card8.suit
        $z = $card9.suit

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

     #Two cards are dealt to the player and they are given the option to check, fold or quit the game
     ::Player_two_cards.draw_player_two_cards
        print "\n Select an option by entering a number below and press Enter: 
        \n".bold.colorize(:color => :red, :background => :white)
        print "\n 1 - fold".bold.colorize(:color => :red, :background => :white)
        print "\n 2 - check".bold.colorize(:color => :red, :background => :white)
        print "\n 3 - quit game
        \n".bold.colorize(:color => :red, :background => :white)

        input = gets.chomp.downcase.strip.split(' ')
        command, params = input 

        case command 
            when '1'
                puts "\n You have chosen to fold in this round.
                \n".bold.colorize(:color => :red, :background => :white)
                ::Gamecontroller.end_game
            when '2'
                ::Deal_flop.deal_flop     
                print "\n Select an option by entering a number below and press Enter: 
                \n".bold.colorize(:color => :red, :background => :white)
                print "\n 1 - fold".bold.colorize(:color => :red, :background => :white)
                print "\n 2 - check".bold.colorize(:color => :red, :background => :white)
                print "\n 3 - quit game
                \n".bold.colorize(:color => :red, :background => :white)
           
            input2 = gets.chomp.downcase.strip
                case input2 
                    when '1'
                        puts "\n You have chosen to fold in this round. 
                        \n".bold.colorize(:color => :black, :background => :red)
                        ::Gamecontroller.end_game
                      
                    when '2'
                        ::Reveal_turn_river.reveal_turn_river
                        print "\n Select an option by entering a number below and press Enter: 
                        \n".bold.colorize(:color => :red, :background => :white)
                        print "\n 1 - reveal cards!".bold.colorize(:color => :red, :background => :white)
                        print "\n 2 - quit game
                        \n".bold.colorize(:color => :red, :background => :white)

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
                                    player_two_cards = []
                                    dealer_two_cards = []
                                    player_rank = 0
                                    dealer_rank = 0
                                    player_hand << $card1 << $card2 << $card3 << $card4 << $card5 << $card6 << $card7
                                    dealer_hand << $card8 << $card9 << $card3 << $card4 << $card5 << $card6 << $card7
                                    player_two_cards << $card1 << $card2
                                    dealer_two_cards << $card8 << $card9
                                                 
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
                                   
                                    #Storing only card values to carry out certain combination comparisons later on
                                    player_card_number << player_hand[0].value << player_hand[1].value << player_hand[2].value << player_hand[3].value  << player_hand[4].value << player_hand[5].value << player_hand[6].value
                                    player_card_number = player_card_number.compact.sort
                                    dealer_card_number << dealer_hand[0].value << dealer_hand[1].value << dealer_hand[2].value << dealer_hand[3].value  << dealer_hand[4].value << dealer_hand[5].value << dealer_hand[6].value
                                    dealer_card_number = dealer_card_number.compact.sort
                                  
                                    #Storing only card suit values for certain combination comparisons later on
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
                                        \n".bold.colorize(:color => :red, :background => :white)
                                        player_rank = 1
                                            
                                            #checking for straight flush 
                                            elsif (player_card_number.each_cons(5).find {|a| a[1] - a[0] == 4}) && (player_card_suits.combination(5).find{|a,b,c,d,e| (a==b) && (b==c) && (c==d) && (d==e)})
                                                print "\n You have a straight flush
                                                \n".bold.colorize(:color => :red, :background => :white)
                                                player_rank = 2
                                        
                                            #checking for four of a kind
                                            elsif player_card_number.combination(4).find {|a,b,c,d| a+b+c+d == a* 4}
                                                print "\n You have four of a kind
                                                \n".bold.colorize(:color => :red, :background => :white)
                                                player_rank = 3
                                            
                                            #checking for full house 
                                            elsif ((player_card_number.combination(3).find {|a,b,c| a+b+c ==a*3} ) && (player_card_number.combination(2).find {|a,b| a+b ==a*2} ))
                                                print "\n You have a full house
                                                \n".bold.colorize(:color => :red, :background => :white)
                                                player_rank = 4
                                            
                                            #checking for flush
                                            elsif player_card_suits.combination(5).find{|a,b,c,d,e| (a==b) && (b==c) && (c==d) && (d==e)}
                                                print "\n You have a flush
                                                \n".bold.colorize(:color => :red, :background => :white)
                                                player_rank = 5

                                            # checking for straight 
                                            elsif player_card_number.each_cons(5).find {|a| ((a[1] - a[0] == 1) && (a[2] - a[1] == 1) &&
                                                  (a[3] - a[2] == 1) && (a[4] - a[3] == 1)) }
                                                print "\n You have a straight
                                                \n".bold.colorize(:color => :red, :background => :white)
                                                player_rank = 6

                                            #checking for three of a kind
                                            elsif player_card_number.combination(3).find {|a,b,c| a+b+c == a* 3}
                                            print "\n You have three of a kind
                                            \n".bold.colorize(:color => :red, :background => :white)
                                            player_rank = 7

                                            #checking for two pairs
                                            elsif player_card_number.combination(4).find {|a,b,c,d| (a+b == a* 2) && (c+d == c*2)}
                                            print "\n You have two pairs
                                            \n".bold.colorize(:color => :red, :background => :white)
                                            player_rank = 8

                                            #checking for 1 pair
                                            elsif player_card_number.combination(2).find {|a,b| a+b == a* 2}
                                            print "\n You have a pair
                                            \n".bold.colorize(:color => :red, :background => :white)
                                            player_rank = 9
                                    end 

                                 #DETECTING COMBOS FOR DEALER

                                        #Checking for royal flush
                                        if dealer_scores.compact.combination(5).find {|a,b,c,d,e| a+b+c+d+e == 205 || a+b+c+d+e == 210 || a+b+c+d+e == 215 || a+b+c+d+e == 220}
                                    
                                        print "\n Dealer has a royal flush
                                            \n".bold.colorize(:color => :red, :background => :white)
                                            dealer_rank = 1
                                                
                                                #checking for straight flush 
                                                elsif (dealer_card_number.each_cons(5).find {|a| a[1] - a[0] == 4}) && (dealer_card_suits.combination(5).find{|a,b,c,d,e| (a==b) && (b==c) && (c==d) && (d==e)})
                                                    print "\n Dealer has a straight flush
                                                    \n".bold.colorize(:color => :red, :background => :white)
                                                    dealer_rank = 2
                                            
                                                #checking for four of a kind
                                                elsif dealer_card_number.combination(4).find {|a,b,c,d| a+b+c+d == a* 4}
                                                    print "\n Dealer has four of a kind
                                                    \n".bold.colorize(:color => :red, :background => :white)
                                                    dealer_rank = 3
                                                
                                                #checking for full house 
                                                elsif ((dealer_card_number.combination(3).find {|a,b,c| a+b+c ==a*3} ) && (dealer_card_number.combination(2).find {|a,b| a+b ==a*2} ))
                                                    print "\n Dealer has a full house
                                                    \n".bold.colorize(:color => :red, :background => :white)
                                                    dealer_rank = 4
                                                
                                                #checking for flush
                                                elsif dealer_card_suits.combination(5).find{|a,b,c,d,e| (a==b) && (b==c) && (c==d) && (d==e)}
                                                    print "\n Dealer has a flush
                                                    \n".bold.colorize(:color => :red, :background => :white)
                                                    dealer_rank = 5
    
                                                #checking for straight  
                                                elsif dealer_card_number.each_cons(5).find {|a| ((a[1] - a[0] == 1) && (a[2] - a[1] == 1) && (a[3] - a[2] == 1) && (a[4] - a[3] == 1)) }    
                                                print "\n Dealer has a straight
                                                    \n".bold.colorize(:color => :red, :background => :white)
                                                    dealer_rank = 6
    
                                                #checking for three of a kind
                                                elsif dealer_card_number.combination(3).find {|a,b,c| a+b+c == a* 3}
                                                print "\n Dealer has three of a kind
                                                \n".bold.colorize(:color => :red, :background => :white)
                                                dealer_rank = 7
    
                                                #checking for two pairs
                                                elsif dealer_card_number.combination(4).find {|a,b,c,d| (a+b == a* 2) && (c+d == c*2)}
                                                print "\n Dealer has two pairs
                                                \n".bold.colorize(:color => :red, :background => :white)
                                                dealer_rank = 8
    
                                                #checking for 1 pair
                                                elsif dealer_card_number.combination(2).find {|a,b| a+b == a* 2}
                                                print "\n Dealer has a pair
                                                \n".bold.colorize(:color => :red, :background => :white)
                                                dealer_rank = 9
                                        end 

                                        sleep 1

                                        art = Artii::Base.new 

                                        if dealer_rank < player_rank
                                            print "\n YOU LOSE!
                                            \n".red.bold
                                                ::Views::Animations.animation_player(Lose1)
                                                print "
                                            
                                                "
                                                print "\n"
                                                puts art.asciify('YOU  LOSE !')  
                                                ::Gamecontroller.end_game
                                                outcome = "lost"

                                        elsif player_rank < dealer_rank
                                            print "

                                            "
                                            print "\n"
                                            puts art.asciify('YOU  WIN !')
                                            ::Gamecontroller.end_game
                                            outcome = "won"
                                     
                                        elsif player_rank == dealer_rank
                                            print "
                                            
                                            "
                                            print "\n"
                                            puts art.asciify('It  is  a  TIE !')
                                            ::Gamecontroller.end_game
                                            outcome = "tied with the dealer"
                                        
                                        end 
                                        
                                        #Write result of game and the player's name to file and shows list
                                        record = []
                                        begin
                                        record << "#{$name} played the game at #{Time.now} and they #{outcome}."
                                        File.open('players.yml', 'a'){|file| file.write(record.to_yaml)}
                                            rescue ArgumentError => e 
                                                puts "Could not parse YAML: #{e.message}"
                                            end 
                                        
                                        print "\n"
                                        puts "\n Game recap".bold.red 
                                        
                                        result = YAML.load_file('players.yml')
                                        puts result
                                    
                                     
                            when '2'
                                puts "\n You have chosen to quit the game. 
                                \n".bold.red
                                ::Gamecontroller.end_game
                            end 

                    when '3'
                        puts "\n You have chosen to quit the game. 
                        \n".bold.red
                        ::Gamecontroller.end_game
                    else
                        puts "You have selected #{input2} which is not a valid option"
                        # retry
                 end 
                end
                
         end
end        