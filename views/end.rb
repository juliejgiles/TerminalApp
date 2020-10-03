require_relative '../controllers/controller.rb'
#The end banner to signal the end of the game
module Views 
    module End
        def print_end
            print "+========================================================================================+"
            print "\n ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ 
            \n".white    
            print "\n                          E N D   O F   T H E   G A M E
            \n"
                print "\n ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★
                \n".white
            print "+========================================================================================+"
        end
        module_function :print_end 
        
    end  
    
end 