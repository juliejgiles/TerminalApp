require_relative 'dispatch'
require_relative 'draw'


puts "\n Welcome to Modified Poker"
    print "\n What\'s your name?"
    Player_name = gets.chomp.strip

begin 
    
    print "\n Hi #{Player_name}, select an option by entering its number:
    \n"
    print "\n 1 - Read the rules"
    print "\n 2 - Play now"
    print "\n 3 - Quit game
    \n"
    input = gets.chomp.downcase.strip.split(' ')
    command, params = input
    dispatch command, params

end until ['3', 'quit', 'q'].include? command





