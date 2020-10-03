
require_relative '../views/rules.rb'
require_relative '../draw'
require_relative '../views/end.rb'
require_relative '../models/deck.rb'
require_relative '../views/request_selection.rb'

module Gamecontroller 
   
    def self.show 
        ::Views::Rules.print_rules
    end 

    def self.fold 
        puts "\n You have chosen to fold in this round. 
        \n".red
    end 

    def self.deal_flop 
        ::Deal_flop.deal_flop    
    end 

    def self.play 
        ::Draw.draw_cards
    end 

    def self.end_game 
        ::Views::End.print_end
    end 
    
    def self.request_selection 
        ::Views::Request_selection.request_selection
    end 
end
