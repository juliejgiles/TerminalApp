require_relative '../controllers/controller.rb'
require_relative '../draw.rb'
#The 'Flop' is dealt, which is 3 cards face up, and 2 cards face down.
module Deal_flop
    def self.deal_flop
        print "\n The Flop has been dealt by the dealer: \n".red
                
        print "\n
        ┌────────────┐         ┌────────────┐         ┌────────────┐        ┌────────────┐        ┌────────────┐
        │#{$c}           |         │#{$d}           |         │#{$e}           |        │░░░░░░░░░░░░|        │░░░░░░░░░░░░|
        │            │         │            │         │            │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        │            │         │            │         │            │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        │     #{$t}      │         │     #{$u}      │         │     #{$v}      │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        │            │         │            │         │            │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        │            │         │            │         │            │        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        │           #{$c}│         │           #{$d}│         │           #{$e}│        │░░░░░░░░░░░░│        │░░░░░░░░░░░░│
        └────────────┘         └────────────┘         └────────────┘        └────────────┘        └────────────┘
        "
    end 

end 