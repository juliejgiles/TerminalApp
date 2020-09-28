require_relative 'controllers/controller.rb'

def dispatch(cmd, params = nil)
    case cmd
    when '1'
    ::GameController.show
        
    when '2'
    ::GameController.play

  

    when '3'
        puts "\n You have quit the game.
        \n"
  
    else
        puts "\n Not a valid option, please try again. 
        \n"
        
    end 

end 