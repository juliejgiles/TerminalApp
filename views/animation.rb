module Animations

    def show_mafia_animation
        mafia = "
        ░█▀▄▀█ ─█▀▀█ ░█▀▀▀ ▀█▀ ─█▀▀█ 　 ░█──░█ ░█▀▀▀ ░█▀▀█ ░█▀▀▀█ ▀█▀ ░█▀▀▀█ ░█▄─░█ 
        ░█░█░█ ░█▄▄█ ░█▀▀▀ ░█─ ░█▄▄█ 　 ─░█░█─ ░█▀▀▀ ░█▄▄▀ ─▀▀▀▄▄ ░█─ ░█──░█ ░█░█░█ 
        ░█──░█ ░█─░█ ░█─── ▄█▄ ░█─░█ 　 ──▀▄▀─ ░█▄▄▄ ░█─░█ ░█▄▄▄█ ▄█▄ ░█▄▄▄█ ░█──▀█

    "
    
    puts mafia.blue.on_red.blink

    puts "test".blink
    end 
end 