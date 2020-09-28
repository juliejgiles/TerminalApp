module Draw

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

        print "\n You have been dealt the following cards: \n"
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
        \n"
        print "\n 1 - fold"
        print "\n 2 - check"
        print "\n 3 - quit game
        \n"

        input = gets.chomp.downcase.strip.split(' ')
        command, params = input 

        case command 
            when '1'
                puts "\n You have chosen to fold in this round. 
                \n"
            when '2'
                print "\n The following cards have been dealt by the dealer: \n"
                
        print "\n
        ┌────────────┐         ┌────────────┐         ┌────────────┐
        │#{c}           |         │#{d}           |         │#{e}           | 
        │            │         │            │         │            │ 
        │            │         │            │         │            │
        │     #{u}      │         │     #{v}      │         │     #{w}      │
        │            │         │            │         │            │ 
        │            │         │            │         │            │ 
        │           #{c}│         │           #{d}│         │           #{e}│
        └────────────┘         └────────────┘         └────────────┘
        "



            when '3'
                puts "3"
            else
                puts "\n Not a valid option, please try again.
                \n"

        end

        module_function :draw
end 