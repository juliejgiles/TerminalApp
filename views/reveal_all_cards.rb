require_relative '../draw.rb'
require_relative '../controllers/controller.rb'

#Displays the dealer's cards and again displays the user's given 2 cards
module Reveal_all_cards 
    def self.reveal_all_cards 
        print "\n The dealer's cards are: \n".red
        print "\n
        ┌────────────┐         ┌────────────┐         
        │#{$h}           |         │#{$i}           |         
        │            │         │            │         
        │            │         │            │        
        │     #{$y}      │         │     #{$z}      │         
        │            │         │            │         
        │            │         │            │         
        │           #{$h}│         │           #{$i}│         
        └────────────┘         └────────────┘         
        "
    
        print "\n And your cards were: \n".red
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