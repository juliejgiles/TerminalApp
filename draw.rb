require_relative 'dispatch2'
require_relative './models/deck.rb'
require_relative './models/card.rb'
require_relative './views/animation.rb'

module Draw
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
        # puts "You got the #{card.value} of #{card.suit}"


        r = card1.suit
        s = card2.suit
        t = card3.suit
        u = card4.suit
        v = card5.suit
        w = card6.suit
        x = card7.suit
        y = card8.suit
        z = card9.suit


        a = card1.value
        b = card2.value
        c = card3.value
        d = card4.value
        e = card5.value
        f = card6.value
        g = card7.value
        h = card8.value
        i = card9.value  

       case a
        when 11
            a = 'J'
        when 12
            a = 'Q'
        when 13
            a = 'K'
        when 14
            a = 'A'
        end 

        case b
        when 11
            b = 'J'
        when 12
            b = 'Q'
        when 13
            b = 'K'
        when 14
            b = 'A'
        end 

        case c
        when 11
            c = 'J'
        when 12
            c = 'Q'
        when 13
            c = 'K'
        when 14
            c = 'A'
        end 

        case d
        when 11
            d = 'J'
        when 12
            d = 'Q'
        when 13
            d = 'K'
        when 14
            d = 'A'
        end 

        case e
        when 11
            e = 'J'
        when 12
            e = 'Q'
        when 13
            e = 'K'
        when 14
            e = 'A'
        end 

        case f
        when 11
            f = 'J'
        when 12
            f = 'Q'
        when 13
            f = 'K'
        when 14
            f = 'A'
        end 


        case g
        when 11
            g = 'J'
        when 12
            g = 'Q'
        when 13
            g = 'K'
        when 14
            g = 'A'
        end 


        case h
        when 11
            h = 'J'
        when 12
            h = 'Q'
        when 13
            h = 'K'
        when 14
            h = 'A'
        end 


        case i
        when 11
            i = 'J'
        when 12
            i = 'Q'
        when 13
            i = 'K'
        when 14
            i = 'A'
        end 






         

        print "\n You have been dealt the following cards: \n".red
        print "\n
        ┌────────────┐         ┌────────────┐         
        │#{a}           |         │#{b}           |         
        │            │         │            │         
        │            │         │            │        
        │     #{r}      │         │     #{s}      │         
        │            │         │            │         
        │            │         │            │         
        │           #{a}│         │           #{b}│         
        └────────────┘         └────────────┘         
        "

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
                print "\n The Flop has been dealt by the dealer: \n".red
                
        print "\n
        ┌────────────┐         ┌────────────┐         ┌────────────┐        ┌────────────┐        ┌────────────┐
        │#{c}           |         │#{d}           |         │#{e}           |        │░░░░░░░░░░░░|        │░░░░░░░░░░░░|
        │            │         │            │         │            │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        │            │         │            │         │            │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        │     #{t}      │         │     #{u}      │         │     #{v}      │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        │            │         │            │         │            │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        │            │         │            │         │            │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        │           #{c}│         │           #{d}│         │           #{e}│        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        └────────────┘         └────────────┘         └────────────┘        └────────────┘        └────────────┘
        "
            
        print "\n Select an option using the number below: 
        \n".red
        print "\n 1 - fold".red
        print "\n 2 - check".red
        print "\n 3 - quit game
        \n".red

        input2 = gets.chomp.downcase.strip
        # command2, params = input2 
        # dispatch2 command2, params
        
                case input2 
                    when '1'
                        puts "\n You have chosen to fold in this round. 
                                        \n".red

                    when '2'

                        puts "\n The Turn and River have now been dealt: 
                        \n".red

        print "\n

        ┌────────────┐         ┌────────────┐         ┌────────────┐        ┌────────────┐        ┌────────────┐
        │#{c}           |         │#{d}           |         │#{e}           |        │#{f}           |        │#{g}           |
        │            │         │            │         │            │        │            │        │            │
        │            │         │            │         │            │        │            │        │            │
        │     #{t}      │         │     #{u}      │         │     #{v}      │        │      #{w}     │        │      #{x}     │
        │            │         │            │         │            │        │            │        │            │
        │            │         │            │         │            │        │            │        │            │
        │           #{c}│         │           #{d}│         │           #{e}│        │           #{f}│        │           #{g}│
        └────────────┘         └────────────┘         └────────────┘        └────────────┘        └────────────┘
                    "
               
                        print "\n Select an option using the number below: 
                        \n".red
                        print "\n 1 - reveal cards!".red
                        print "\n 2 - quit game
                        \n".red

                        input3 = gets.chomp.downcase.strip

                            case input3 
                            when '1'
                                print "\n The dealer's cards are: \n".red
                                print "\n
                                ┌────────────┐         ┌────────────┐         
                                │#{h}           |         │#{i}           |         
                                │            │         │            │         
                                │            │         │            │        
                                │     #{y}      │         │     #{z}      │         
                                │            │         │            │         
                                │            │         │            │         
                                │           #{h}│         │           #{i}│         
                                └────────────┘         └────────────┘         
                                "
                            
                                print "\n And your cards were: \n".red
                                print "\n
                                ┌────────────┐         ┌────────────┐         
                                │#{a}           |         │#{b}           |         
                                │            │         │            │         
                                │            │         │            │        
                                │     #{r}      │         │     #{s}      │         
                                │            │         │            │         
                                │            │         │            │         
                                │           #{a}│         │           #{b}│         
                                └────────────┘         └────────────┘         
                                "

                            
                                
    
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
                                   

                                    # order = [ [ '', ''],
                                    #          [2, :♦],   [2, :♣],  [2, :♥],  [2, :♠],
                                    #          [3, :♦],   [3, :♣],  [3, :♥],  [3, :♠],
                                    #          [4, :♦],   [4, :♣],  [4, :♥],  [4, :♠],
                                    #          [5, :♦],   [5, :♣],  [5, :♥],  [5, :♠],
                                    #          [6, :♦],   [6, :♣],  [6, :♥],  [6, :♠],
                                    #          [7, :♦],   [7, :♣],  [7, :♥],  [7, :♠],
                                    #          [8, :♦],   [8, :♣],  [8, :♥],  [8, :♠],
                                    #          [9, :♦],   [9, :♣],  [9, :♥],  [9, :♠],
                                    #          [10, :♦],  [10, :♣], [10, :♥], [10, :♠],
                                    #          [:J, :♦], [:J, :♣],[:J, :♥],[:J, :♠],
                                    #          [:Q, :♦], [:Q, :♣],[:Q, :♥],[:Q, :♠],
                                    #          [:K, :♦], [:K, :♣],[:K, :♥],[:K, :♠],  
                                    #          [:A, :♦], [:A, :♣],[:A, :♥],[:A, :♠]
                                    #         ]
                            
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
                                   
                                    
                                    # player_scores = player_scores.sort

                                    #Storing card values only for certain comparisons  
                                    player_card_number << player_hand[0].value << player_hand[1].value << player_hand[2].value << player_hand[3].value  << player_hand[4].value << player_hand[5].value << player_hand[6].value
                                    
                                    # player_card_number[player_card_number.index(:J)] = 11
                                    # player_card_number[player_card_number.index(:Q)] = 12
                                    # player_card_number[player_card_number.index(:K)] = 13
                                    # player_card_number[player_card_number.index(:A)] = 14

                                    # a = player_card_number.index(:J)
                                    # b = player_card_number.index(:Q)
                                    # c = player_card_number.index(:K)
                                    # d = player_card_number.index(:A)
                                    
                                    # if !a==nil
                                    #     player_card_number[a] == 11
                                    # end 

                                    # if !b==nil
                                    #     player_card_number[b] == 12
                                    # end 

                                    # if !c==nil
                                    #     player_card_number[c] == 13
                                    # end 

                                    # if !d==nil
                                    #     player_card_number[d] == 14
                                    # end 

                                   
                                    player_card_number = player_card_number.compact.sort
                             
                                    
                                    dealer_card_number << dealer_hand[0].value << dealer_hand[1].value << dealer_hand[2].value << dealer_hand[3].value  << dealer_hand[4].value << dealer_hand[5].value << dealer_hand[6].value

                                    # dealer_card_number[dealer_card_number.index(:J)] = 11
                                    # dealer_card_number[dealer_card_number.index(:Q)] = 12
                                    # dealer_card_number[dealer_card_number.index(:K)] = 13
                                    # dealer_card_number[dealer_card_number.index(:A)] = 14

                                    # a = dealer_card_number.index(:J)
                                    # b = dealer_card_number.index(:Q)
                                    # c = dealer_card_number.index(:K)
                                    # d = dealer_card_number.index(:A)
                                    
                                    # if !a==nil
                                    #     dealer_card_number[a] == 11
                                    # end 

                                    # if !b==nil
                                    #     dealer_card_number[b] == 12
                                    # end 

                                    # if !c==nil
                                    #     dealer_card_number[c] == 13
                                    # end 

                                    # if !d==nil
                                    #     dealer_card_number[d] == 14
                                    # end 
                                    
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

                                            #checking for straight
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
                                                \n".red
                                                lose1 = 
    
                                                ["
                                                
                                           
                                           
                                           
                                           
                                           
                                           
                                                                          WWM
                                                                         kO0XN
                                                                         xkxx0W    0XNW
                                                             X00         dxkkx0    OxkkK 
                                                            Kdoxk        odkxxlO   0xxkk0
                                                            XdoxxO       ddkkxlO   0xxkk0
                                                            k0odxxK      ddkkklO   KddxkO
                                                             kldxOXW     KddkOOO   0xxOk0
                                                              XxdkO0k    KddkOOk   0dxO00
                                                    XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                                    KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                                     0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                                      Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                       WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                         NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                          WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                            NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                              KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                              WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                               XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                               NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                               WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                               0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                                XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                                WOccodxkO00OkkkxxxxkkxxxddkX
                                                                 WkccodxkkOkkxxxdddddddod0N
                                                                  Wk::lloddxdddddooolloOX
                                                                   Xo,;:cllooooooddooo0W
                                                                   d;cllooddddddxxddOW
                                                                   Nd:ooddddddxxkkxdd0
                                                                   Xocodxxxdddxxxxxxd0
                                                                   Klcddxkkxddxxxxxxd0
                                                                   0ccodxkkkxxxkkxxxd0W   ", 
                                           
                                           " 
                                           
                                                                                                     ___________________________________ ______________________
                                                                                                     \                                  | (_)     (_)    (_)   \
                                                                                                     `.                                |  __________________   |
                                                                                                       `-..........................____|_(                  )_/
                                           
                                            
                                                                          WWM
                                                                         kO0XN
                                                                         xkxx0W    0XNW
                                                             X00         dxkkx0    OxkkK 
                                                            Kdoxk        odkxxlO   0xxkk0   
                                                            XdoxxO       ddkkxlO   0xxkk0
                                                            k0odxxK      ddkkklO   KddxkO
                                                             kldxOXW     KddkOOO   0xxOk0
                                                              XxdkO0k    KddkOOk   0dxO00
                                                    XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                                    KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                                     0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                                      Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                       WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                         NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                          WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                            NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                              KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                              WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                               XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                               NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                               WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                               0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                                XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                                WOccodxkO00OkkkxxxxkkxxxddkX
                                                                 WkccodxkkOkkxxxdddddddod0N
                                                                  Wk::lloddxdddddooolloOX
                                                                   Xo,;:cllooooooddooo0W
                                                                   d;cllooddddddxxddOW
                                                                   Nd:ooddddddxxkkxdd0
                                                                   Xocodxxxdddxxxxxxd0
                                                                   Klcddxkkxddxxxxxxd0
                                                                   0ccodxkkkxxxkkxxxd0W  ", 
                                           
                                           " 
                                           
                                                                                                     ___________________________________ ______________________              
                                                                                                     \                                  | (_)     (_)    (_)   \                  
                                                                                                     `.                                |  __________________   |                      
                                                                                                       `-..........................____|_(                  )_/                     
                                                                                                                                                                  
                                                            
                                                                          WWM
                                                                         kO0XN
                                                                         xkxx0W    0XNW
                                                             X00         dxkkx0    OxkkK 
                                                            Kdoxk        odkxxlO   0xxkk0   
                                                            XdoxxO       ddkkxlO   0xxkk0
                                                            k0odxxK      ddkkklO   KddxkO
                                                             kldxOXW     KddkOOO   0xxOk0
                                                              XxdkO0k    KddkOOk   0dxO00
                                                    XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                                    KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                                     0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                                      Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                       WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                         NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                          WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                            NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                              KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                              WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                               XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                               NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                               WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                               0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                                XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                                WOccodxkO00OkkkxxxxkkxxxddkX
                                                                 WkccodxkkOkkxxxdddddddod0N
                                                                  Wk::lloddxdddddooolloOX
                                                                   Xo,;:cllooooooddooo0W
                                                                   d;cllooddddddxxddOW
                                                                   Nd:ooddddddxxkkxdd0
                                                                   Xocodxxxdddxxxxxxd0
                                                                   Klcddxkkxddxxxxxxd0
                                                                   0ccodxkkkxxxkkxxxd0W  ", 
                                           
                                           " 
                                           
                                                                                               ___________________________________ ______________________
                                                                                               \                                  | (_)     (_)    (_)   \                   
                                                                                                `.                                |  __________________   |
                                                                                                  `-..........................____|_(                  )_/
                                           
                                            
                                                                          WWM
                                                                         kO0XN
                                                                         xkxx0W    0XNW
                                                             X00         dxkkx0    OxkkK 
                                                            Kdoxk        odkxxlO   0xxkk0   
                                                            XdoxxO       ddkkxlO   0xxkk0
                                                            k0odxxK      ddkkklO   KddxkO
                                                             kldxOXW     KddkOOO   0xxOk0
                                                              XxdkO0k    KddkOOk   0dxO00
                                                    XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                                    KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                                     0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                                      Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                       WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                         NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                          WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                            NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                              KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                              WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                               XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                               NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                               WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                               0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                                XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                                WOccodxkO00OkkkxxxxkkxxxddkX
                                                                 WkccodxkkOkkxxxdddddddod0N
                                                                  Wk::lloddxdddddooolloOX
                                                                   Xo,;:cllooooooddooo0W
                                                                   d;cllooddddddxxddOW
                                                                   Nd:ooddddddxxkkxdd0
                                                                   Xocodxxxdddxxxxxxd0
                                                                   Klcddxkkxddxxxxxxd0
                                                                   0ccodxkkkxxxkkxxxd0W  ", 
                                           
                                               
                                           "    
                                           
                                                                                          ___________________________________ ______________________
                                                                                          \                                  | (_)     (_)    (_)   \
                                                                                           `.                                |  __________________   |
                                                                                             `-..........................____|_(                  )_/
                                                                          WWM
                                                                         kO0XN
                                                                         xkxx0W    0XNW
                                                             X00         dxkkx0    OxkkK 
                                                            Kdoxk        odkxxlO   0xxkk0   
                                                            XdoxxO       ddkkxlO   0xxkk0
                                                            k0odxxK      ddkkklO   KddxkO
                                                             kldxOXW     KddkOOO   0xxOk0
                                                              XxdkO0k    KddkOOk   0dxO00
                                                    XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                                    KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                                     0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                                      Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                       WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                         NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                          WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                            NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                              KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                              WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                               XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                               NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                               WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                               0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                                XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                                WOccodxkO00OkkkxxxxkkxxxddkX
                                                                 WkccodxkkOkkxxxdddddddod0N
                                                                  Wk::lloddxdddddooolloOX
                                                                   Xo,;:cllooooooddooo0W
                                                                   d;cllooddddddxxddOW
                                                                   Nd:ooddddddxxkkxdd0
                                                                   Xocodxxxdddxxxxxxd0
                                                                   Klcddxkkxddxxxxxxd0
                                                                   0ccodxkkkxxxkkxxxd0W  ", 
                                                                   
                                           " 
                                           
                                                                                            ___________________________________ ______________________
                                                                          WWM               \                                  | (_)     (_)    (_)   \
                                                                         kO0XN               `.                                |  __________________   |
                                                                         xkxx0W    0XNW        `-..........................____|_(                  )_/
                                                             X00         dxkkx0    OxkkK 
                                                            Kdoxk        odkxxlO   0xxkk0   
                                                            XdoxxO       ddkkxlO   0xxkk0
                                                            k0odxxK      ddkkklO   KddxkO
                                                             kldxOXW     KddkOOO   0xxOk0
                                                              XxdkO0k    KddkOOk   0dxO00
                                                    XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                                    KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                                     0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                                      Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                       WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                         NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                          WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                            NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                              KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                              WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                               XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                               NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                               WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                               0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                                XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                                WOccodxkO00OkkkxxxxkkxxxddkX
                                                                 WkccodxkkOkkxxxdddddddod0N
                                                                  Wk::lloddxdddddooolloOX
                                                                   Xo,;:cllooooooddooo0W
                                                                   d;cllooddddddxxddOW
                                                                   Nd:ooddddddxxkkxdd0
                                                                   Xocodxxxdddxxxxxxd0
                                                                   Klcddxkkxddxxxxxxd0
                                                                   0ccodxkkkxxxkkxxxd0W  ", 
                                           
                                           " 
                                           
                                                                                            
                                                                          WWM             
                                                                         kO0XN              
                                                                         xkxx0W    0XNW  ___________________________________ ______________________
                                                             X00         dxkkx0    OxkkK \                                  | (_)     (_)    (_)   \
                                                            Kdoxk        odkxxlO   0xxkk0 `.                                |  __________________   |
                                                            XdoxxO       ddkkxlO   0xxkk0   `-..........................____|_(                  )_/
                                                            k0odxxK      ddkkklO   KddxkO
                                                             kldxOXW     KddkOOO   0xxOk0
                                                              XxdkO0k    KddkOOk   0dxO00
                                                    XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                                    KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                                     0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                                      Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                       WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                         NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                          WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                            NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                              KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                              WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                               XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                               NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                               WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                               0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                                XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                                WOccodxkO00OkkkxxxxkkxxxddkX
                                                                 WkccodxkkOkkxxxdddddddod0N
                                                                  Wk::lloddxdddddooolloOX
                                                                   Xo,;:cllooooooddooo0W
                                                                   d;cllooddddddxxddOW
                                                                   Nd:ooddddddxxkkxdd0
                                                                   Xocodxxxdddxxxxxxd0
                                                                   Klcddxkkxddxxxxxxd0
                                                                   0ccodxkkkxxxkkxxxd0W  ", 
                                           
                                           " 
                                           
                                                                                            
                                                                   WWM             
                                                                  kO0XN              
                                                                  xkxx0W    0XNW  
                                                      X00         dxkkx0    OxkkK 
                                                     Kdoxk        odkxxlO   0xxkk0 
                                                     XdoxxO       ddkkxlO   0xxkk0___________________________________ ______________________   
                                                     k0odxxK      ddkkklO   KddxkO\                                  | (_)     (_)    (_)   \
                                                      kldxOXW     KddkOOO   0xxOk0 `.                                |  __________________   |
                                                       XxdkO0k    KddkOOk   0dxO00   `-..........................____|_(                  )_/
                                             XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                             KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                              0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                               Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                  NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                   WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                     NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                       KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                       WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                        XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                        NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                        WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                        0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                         XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                         WOccodxkO00OkkkxxxxkkxxxddkX
                                                          WkccodxkkOkkxxxdddddddod0N
                                                           Wk::lloddxdddddooolloOX
                                                            Xo,;:cllooooooddooo0W
                                                            d;cllooddddddxxddOW
                                                            Nd:ooddddddxxkkxdd0
                                                            Xocodxxxdddxxxxxxd0
                                                            Klcddxkkxddxxxxxxd0
                                                            0ccodxkkkxxxkkxxxd0W  ", 
                                           
                                           " 
                                           
                                           
                                                                                    0XNW          
                                                                   WWM             OxkkK
                                                                  kO0XN            0xxkk0   
                                                                  xkxx0W           0xxkk0_
                                                      X00         dxkkx0           KddxkO
                                                     Kdoxk        odkxxlO          0xxOk0
                                                     XdoxxO       ddkkxlO   ___________________________________ ______________________   
                                                     k0odxxK      ddkkklO   \                                  | (_)     (_)    (_)   \
                                                      kldxOXW     KddkOOO    `.                                |  __________________   |
                                                       XxdkO0k    KddkOOk      `-..........................____|_(                  )_/
                                             XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                             KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                              0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                               Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                  NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                   WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                     NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                       KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                       WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                        XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                        NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                        WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                        0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                         XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                         WOccodxkO00OkkkxxxxkkxxxddkX
                                                          WkccodxkkOkkxxxdddddddod0N
                                                           Wk::lloddxdddddooolloOX
                                                            Xo,;:cllooooooddooo0W
                                                            d;cllooddddddxxddOW
                                                            Nd:ooddddddxxkkxdd0
                                                            Xocodxxxdddxxxxxxd0
                                                            Klcddxkkxddxxxxxxd0
                                                            0ccodxkkkxxxkkxxxd0W  ", 
                                           
                                           " 
                                           
                                           
                                                                                        0XNW          
                                                                   WWM                 OxkkK
                                                                  kO0XN                0xxkk0   
                                                                  xkxx0W               0xxkk0
                                                      X00         dxkkx0               KddxkO
                                                     Kdoxk        odkxxlO              0xxOk0
                                                     XdoxxO       ddkkxlO             ___________________________________ ______________________   
                                                     k0odxxK      ddkkklO             \                                  | (_)     (_)    (_)   \
                                                      kldxOXW     KddkOOO              `.                                |  __________________   |
                                                       XxdkO0k    KddkOOk                `-..........................____|_(                  )_/
                                             XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                             KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                              0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                               Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                  NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                   WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                     NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                       KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                       WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                        XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                        NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                        WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                        0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                         XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                         WOccodxkO00OkkkxxxxkkxxxddkX
                                                          WkccodxkkOkkxxxdddddddod0N
                                                           Wk::lloddxdddddooolloOX
                                                            Xo,;:cllooooooddooo0W
                                                            d;cllooddddddxxddOW
                                                            Nd:ooddddddxxkkxdd0
                                                            Xocodxxxdddxxxxxxd0
                                                            Klcddxkkxddxxxxxxd0
                                                            0ccodxkkkxxxkkxxxd0W  ", 
                                           
                                           " 
                                           
                                           
                                                                                                 
                                                                   WWM                 
                                                                  kO0XN                  
                                                                  xkxx0W               
                                                      X00         dxkkx0               
                                                     Kdoxk        odkxxlO              
                                                     XdoxxO       ddkkxlO              
                                                     k0odxxK      ddkkklO            
                                                      kldxOXW     KddkOOO              
                                                       XxdkO0k    KddkOOk               
                                             XkkOl      0odkkOk   dxOOOkK  kdkOkON
                                             KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
                                              0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
                                               Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
                                                WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
                                                  NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
                                                   WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                                                     NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                                                       KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                                                       WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                                                        XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                                                        NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                                                        WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                                                        0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                                                         XocodxkOO00OkkxxxkkkkkkkkxdxKW
                                                         WOccodxkO00OkkkxxxxkkxxxddkX
                                                          WkccodxkkOkkxxxdddddddod0N
                                                           Wk::lloddxdddddooolloOX
                                                            Xo,;:cllooooooddooo0W
                                                            d;cllooddddddxxddOW
                                                            Nd:ooddddddxxkkxdd0
                                                            Xocodxxxdddxxxxxxd0
                                                            Klcddxkkxddxxxxxxd0
                                                            0ccodxkkkxxxkkxxxd0W  "]
                                                            
                                                ::Views::Animations.animation_player(lose1)
                                                print "\n YOU LOSE!
                                                \n".red

                                        elsif player_rank < dealer_rank
                                            print "\n YOU WIN!
                                                \n".red
                                     
                                        elsif player_rank == dealer_rank
                                            print "\n No winners this round
                                                \n".red

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