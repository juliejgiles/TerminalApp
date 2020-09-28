require_relative 'controllers/controller.rb'

def dispatch(cmd, params = nil)
    case cmd
    when '1'
        ::RulesController.show
        
        # print "\n Rules of the game:"
        #     print "\n 1) You will be dealt 5 random cards out of a standard deck of 52 cards which have been shuffled by the dealer."
        #     print "\n 2) Dealer (computer) will reveal 3 cards."
        #     print "\n 3) You have the option of placing a bet or folding at this stage."
        #     print "\n 4) If you choose to bet, the dealer will continue to reveal 2 more cards."
        #     print "\n 5) Player with highest combo wins the game."
        #     print "\n 6) Player with lowest combo loses a finger.
        #     \n"

    when '2'
      ::RulesController.play

  

    when '3'
        puts "3"
  
    else
        puts "\n Not a valid option, please try again. 
        \n"
        
    end 

end 