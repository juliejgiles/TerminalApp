require_relative 'controllers/controller.rb'
require_relative './draw.rb'
require_relative './views/animation.rb'
require_relative './views/rules.rb'
require_relative './views/end.rb'
require 'colorize'
require 'colorized_string'
require 'tty-prompt'
require 'artii'
require 'ruby2d'

song = Music.new('music.mp3')
song.play
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
            ::Gamecontroller.show
           
        when 2
            ::Gamecontroller.play
        when 3
            puts "\n You have quit the game.
            \n"
            ::Gamecontroller.end_game
    end 

end until [3, 2, 'q'].include? selection





