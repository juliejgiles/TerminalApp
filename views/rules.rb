require_relative '../controllers/controller.rb'
require 'colorize'
require 'colorized_string'
require 'tty-prompt'

module Views 
    module Rules
        def self.print_rules
            print "+=================================================================================================================+"
            print "\n ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★
            \n".white    
            print "\n                                   R U L E S   O F   T H E   G A M E:
            \n"
                print "\n ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★
                \n".white
                print "\n 1) You will be dealt 5 random cards out of a shuffled deck of 52 cards."
                print "\n 2) You are playing against the Dealer, who has also been dealt 2 cards (which you can't see)."
                print "\n 3) You have the option to 'check' (keep playing) or 'fold' (not go ahead) at this stage."
                print "\n 4) Dealer (computer) will deal the 3 card flop on the table."
                print "\n 5) If you choose to 'check', the dealer will deal the Turn and River (4th and 5th cards) on the table."
                print "\n 6) You have the option to 'reveal cards' or 'quit' at this point."
                print "\n 7) If you choose 'reveal cards', your 2 cards will be combined with the 5 cards on the table." 
                print "\n 8) The Dealer will check for possible combinations out of the total of 7 cards." 
                print "\n 9) The Dealer's 2 cards will also be revealed." 
                print "\n 10) The Player with the lower ranked combination loses the game and a finger. 
                \n"
                print "\n ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★
                \n".white
            print "+=================================================================================================================+"
        end
        
    end  
    
end 