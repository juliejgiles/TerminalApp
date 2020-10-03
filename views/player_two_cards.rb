require_relative '../draw.rb'

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