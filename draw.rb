require_relative 'dispatch2'

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


        s = card1.suit
        t = card2.suit
        u = card3.suit
        v = card4.suit
        w = card5.suit
        x = card6.suit
        y = card7.suit


        a = card1.value
        b = card2.value
        c = card3.value
        d = card4.value
        e = card5.value
        f = card6.value
        g = card7.value


        player_hand = []
        flop = []
        player_hand << card1 << card2 
        flop << card3 << card4 << card5 << card6 << card7
        # dealer_hand << card8 << card9

        print "\n You have been dealt the following cards: \n".red
        print "\n
        ┌────────────┐         ┌────────────┐         
        │#{a}           |         │#{b}           |         
        │            │         │            │         
        │            │         │            │        
        │     #{s}      │         │     #{t}      │         
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
        │     #{u}      │         │     #{v}      │         │     #{w}      │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
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
                    │     #{u}      │         │     #{v}      │         │     #{w}      │        │      #{x}     │        │      #{y}     │
                    │            │         │            │         │            │        │            │        │            │
                    │            │         │            │         │            │        │            │        │            │
                    │           #{c}│         │           #{d}│         │           #{e}│        │           #{f}│        │           #{g}│
                    └────────────┘         └────────────┘         └────────────┘        └────────────┘        └────────────┘
                    "
               

                    when '3'
                        puts "\n You have chosen to quit the game. 
                        \n".red
                    else
                        p input2
                 end 
                end
    end

    
end 