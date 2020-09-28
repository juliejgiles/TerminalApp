require_relative '../dispatch.rb'

module Views 
    module Rules
        def print_rules
            print "+========================================================================================+"
            print "\n ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ 
            \n".white    
            print "\n                          R U L E S   O F   T H E   G A M E:
            \n"
                print "\n ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ 
                \n".white
                print "\n 1) You will be dealt 5 random cards out of a shuffled deck of 52 cards."
                print "\n 2) Dealer (computer) will reveal 3 cards."
                print "\n 3) You have the option of placing a bet or folding at this stage."
                print "\n 4) If you choose to bet, the dealer will continue to reveal 2 more cards."
                print "\n 5) Player with highest combo wins the game."
                print "\n 6) Player with lowest combo loses a finger. 
                \n"
                print "\n ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ 
                \n".white
            print "+========================================================================================+"
        end
        module_function :print_rules
        
    end  
    
end 