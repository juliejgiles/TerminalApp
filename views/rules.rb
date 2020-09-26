module Views

    module Rules
        def self.show 
            print "\n Rules of the game:"
            print "\n 1) You will be dealt 5 random cards"
            print "\n 2) Dealer (computer) will reveal 3 cards"
            print "\n 3) You have the option of placing a bet or folding at this stage"
            print "\n 4) If you choose to bet, the dealer will continue to reveal 2 more cards"
            print "\n 5) Player with highest combo wins the game"
            print "\n 6) Player with lowest combo loses a finger"
        end 
        module_function :show 
    end 

  module_function :Rules
end