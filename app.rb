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

#plays background music
song = Music.new('music.mp3')
song.play
title = "my Terminal App"
user = "Username"
title = ARGV[0] if ARGV[0]
user = ARGV[1] if ARGV[1]
puts "Welcome to #{title}, #{user}!"
print "\n +=================================================================================================================+ \n"
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
                                                                         

puts "                                                   JULIE GILES                                         ".colorize(:color => :red, :background => :white)

print "\n +=================================================================================================================+ \n"
prompt = TTY::Prompt.new 
name = prompt.ask('What\'s your name???'.red)
begin
def validate_name(name)
    name = name.chomp.strip
    raise ArgumentError, "Name must not be empty" if name.empty?
    name
end 
rescue ArgumentError => e 
    puts "An error occured: #{e.inspect}"
    retry 
end

$NAME = name

print "\n +=================================================================================================================+ \n"
#Main menu selection options using TTY prompt gem
begin 
choices = [
    {name: '1 - Read the rules'.red, value: 1},
    {name: '2 - Play now'.red, value: 2},
    {name: '3 - Exit'.red, value: 3}
]
selection = prompt.select("\n #{$NAME}, select an option below! \n".colorize(:color => :red, :background => :gray), choices)
    case selection 
        when 1
            ::Gamecontroller.show
        when 2
            ::Gamecontroller.play
        when 3
            puts "\n You have quit the game.".colorize(:color => :black, :background => :red)
            ::Gamecontroller.end_game
    end 

end until [3, 2, 'q'].include? selection





