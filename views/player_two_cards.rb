require_relative '../draw.rb'
require_relative '../controllers/controller.rb'

#Displays the initial 2 cards dealt to the player
module Player_two_cards
    def self.draw_player_two_cards() 
        print "\n You have been dealt the following cards: \n".red
        print "\n
        ┌────────────┐         ┌────────────┐         
        │#{$a}           |         │#{$b}           |         
        │            │         │            │         
        │            │         │            │        
        │     #{$r}      │         │     #{$s}      │         
        │            │         │            │         
        │            │         │            │         
        │           #{$a}│         │           #{$b}│         
        └────────────┘         └────────────┘         
        "
       
    end 


end 