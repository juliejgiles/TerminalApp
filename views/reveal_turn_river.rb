require_relative '../draw.rb'
require_relative '../controllers/controller.rb'

module Reveal_turn_river
    def self.reveal_turn_river 
        puts "\n The Turn and River have now been dealt: 
        \n".red

print "\n

┌────────────┐         ┌────────────┐         ┌────────────┐        ┌────────────┐        ┌────────────┐
│#{$c}           |         │#{$d}           |         │#{$e}           |        │#{$f}           |        │#{$g}           |
│            │         │            │         │            │        │            │        │            │
│            │         │            │         │            │        │            │        │            │
│     #{$t}      │         │     #{$u}      │         │     #{$v}      │        │      #{$w}     │        │      #{$x}     │
│            │         │            │         │            │        │            │        │            │
│            │         │            │         │            │        │            │        │            │
│           #{$c}│         │           #{$d}│         │           #{$e}│        │           #{$f}│        │           #{$g}│
└────────────┘         └────────────┘         └────────────┘        └────────────┘        └────────────┘
    "
    end 
end 