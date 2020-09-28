require_relative '../views/rules.rb'
require_relative '../models/deck.rb'
require_relative '../models/card.rb'
require_relative '../draw.rb'

module RulesController 
    def show 
        ::Views.Rules.print_rules
    end 

    def play 
        ::Draw
    end 

    module_function :show, :play
end 