require_relative '../controllers/controller.rb'

#Displays the options of selections to the user
module Views 
    module Request_selection
        def self.request_selection
            print "\n Select an option by entering a number below and press Enter: 
            \n".bold.colorize(:color => :red, :background => :white)
            print "\n 1 - fold".bold.colorize(:color => :red, :background => :white)
            print "\n 2 - check".bold.colorize(:color => :red, :background => :white)
            print "\n 3 - quit game
            \n".bold.colorize(:color => :red, :background => :white)

        end 
    end 
end 