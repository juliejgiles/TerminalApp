require_relative '../views/rules.rb'
require_relative '../models/deck.rb'
require_relative '../models/card.rb'
require_relative '../draw.rb'
require_relative '../views/animation.rb'


module GameController 
    def show 
        ::Views::Rules.print_rules
    end 

    def play 
        ::Draw.draw_cards
    end 

    def end 
        ::Views::End.print_end
    end 

    def play_five_cards 
        ::Draw.play_five_cards
    end 
    module_function :show, :play, :end, :play_five_cards
end 