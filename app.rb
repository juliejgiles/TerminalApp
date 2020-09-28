require_relative 'dispatch'
require_relative 'draw'
require 'colorize'
require 'colorized_string'


print "\n +========================================================================================+ \n"



print "\n Welcome to Modified Poker
\n".red


puts "                                         JULIE GILES                                       ".colorize(:color => :red, :background => :white)

print "\n +========================================================================================+ \n"

    puts "\n What\'s your name?".red
print "\n +========================================================================================+ \n"
    Player_name = gets.chomp.strip

begin 
    
    print "\n Hi #{Player_name}, select an option by entering its number:
    \n".red
    print "\n 1 - Read the rules".red
    print "\n 2 - Play now".red
    print "\n 3 - Quit game
    \n".red
    input = gets.chomp.downcase.strip.split(' ')
    command, params = input
    dispatch command, params

end until ['3'].include? command





