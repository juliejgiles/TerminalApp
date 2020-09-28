require_relative 'controllers/controller.rb'

def dispatch(cmd, params = nil)
    case cmd
    when '1'
        ::RulesController.show
        
    when '2'
      ::RulesController.play

  

    when '3'
        puts "\n You have quit the game.
        \n"
  
    else
        puts "\n Not a valid option, please try again. 
        \n"
        
    end 

end 