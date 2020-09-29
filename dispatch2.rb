require_relative 'controllers/controller.rb'
require_relative './draw.rb'


#commands for proceeding in game after 3 card flop has been shown 
def dispatch2(cmd2, params = nil)
    case cmd2
    when '1'
    ::GameController.end
        
    when '2'
    ::GameController.play_five_cards

    when '3'
        puts "\n You have quit the game.
        \n"

    # else
    #     puts "\n Not a valid option, please try again. 
    #     \n"
    end 
end 