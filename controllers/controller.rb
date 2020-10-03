
require_relative '../views/rules.rb'
require_relative '../draw.rb'
# require_relative '../views/deal_flop.rb'
# require_relative '../views/player_two_cards.rb'
# require_relative '../views/reveal_all_cards.rb'
# require_relative '../views/reveal_turn_river.rb'
# require_relative '../views/end.rb'


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
    
end
