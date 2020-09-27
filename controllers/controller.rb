require_relative '../views/rules.rb'

module RulesController 
    def show 
        ::Views.Rules.print_rules
    end 

    module_function :show
end 