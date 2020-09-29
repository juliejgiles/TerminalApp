require_relative 'dispatch'
require_relative 'dispatch2'
require_relative 'draw'
require_relative './views/animation.rb'
require 'colorize'
require 'colorized_string'


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

    puts "\n What\'s your name?".red
print "\n+=========================================================================================+ \n"
    Player_name = gets.chomp.strip

begin 
    
    print "\n#{Player_name}, select an option by entering its number:
    \n".red
    print "\n 1 - Read the rules".red
    print "\n 2 - Play now".red
    print "\n 3 - Quit game
    \n".red
    input = gets.chomp.downcase.strip.split(' ')
    command, params = input
    dispatch command, params

end until ['3', '2', 'q'].include? command





