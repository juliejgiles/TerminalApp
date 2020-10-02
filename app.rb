require_relative 'dispatch'
require_relative 'dispatch2'
require_relative 'draw'
require_relative './views/animation.rb'
require_relative './views/rules.rb'
require_relative './views/end.rb'
require 'colorize'
require 'colorized_string'
require 'tty-prompt'


print "\n +========================================================================================+ \n"

puts "

                          ██████╗░░█████╗░██╗░░██╗███████╗██████╗░
                          ██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗
                          ██████╔╝██║░░██║█████═╝░█████╗░░██████╔╝
                          ██╔═══╝░██║░░██║██╔═██╗░██╔══╝░░██╔══██╗
                          ██║░░░░░╚█████╔╝██║░╚██╗███████╗██║░░██║
                          ╚═╝░░░░░░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝


".white
puts "
        ░█▀▄▀█ ─█▀▀█ ░█▀▀▀ ▀█▀ ─█▀▀█ 　 ░█──░█ ░█▀▀▀ ░█▀▀█ ░█▀▀▀█ ▀█▀ ░█▀▀▀█ ░█▄─░█ 
        ░█░█░█ ░█▄▄█ ░█▀▀▀ ░█─ ░█▄▄█ 　 ─░█░█─ ░█▀▀▀ ░█▄▄▀ ─▀▀▀▄▄ ░█─ ░█──░█ ░█░█░█ 
        ░█──░█ ░█─░█ ░█─── ▄█▄ ░█─░█ 　 ──▀▄▀─ ░█▄▄▄ ░█─░█ ░█▄▄▄█ ▄█▄ ░█▄▄▄█ ░█──▀█

".red

                                                                                                                                                                                                                                                                              

                                                                           

puts "                                      JULIE GILES                                         ".colorize(:color => :red, :background => :white)

print "\n+=========================================================================================+ \n"
prompt = TTY::Prompt.new 
name = prompt.ask('What\'s your name???'.red, default: 'Player')
name = name.chomp.strip


print "\n+=========================================================================================+ \n"
    

begin 
choices = [
    {name: '1 - Read the rules'.red, value: 1},
    {name: '2 - Play now'.red, value: 2},
    {name: '3 - Exit'.red, value: 3}
]

selection = prompt.select("\n #{name}, select an option below! \n".red, choices)
    case selection 
        when 1
            ::Views::Rules.print_rules
        when 2
            ::Draw.draw_cards
        when 3
            puts "\n You have quit the game.
            \n"
            ::Views::End.print_end
    end 

# dispatch selection

    # input = gets.chomp.downcase.strip.split(' ')
    # command, params = input
    # dispatch command, params

end until [3, 2, 'q'].include? selection





