module Animations

  
    

    lose1 = ['
    
                               WWM
                              kO0XN
                              xkxx0W    0XNW
                  X00         dxkkx0    OxkkK 
                 Kdoxk        odkxxlO   0xxkk0
                 XdoxxO       ddkkxlO   0xxkk0
                 k0odxxK      ddkkklO   KddxkO
                  kldxOXW     KddkOOO   0xxOk0
                   XxdkO0k    KddkOOk   0dxO00
         XkkOl      0odkkOk   dxOOOkK  kdkOkON
         KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
          0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
           Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
            WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
              NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
               WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                 NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                   KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                   WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                    XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                    NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                    WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                    0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                     XocodxkOO00OkkxxxkkkkkkkkxdxKW
                     WOccodxkO00OkkkxxxxkkxxxddkX
                      WkccodxkkOkkxxxdddddddod0N
                       Wk::lloddxdddddooolloOX
                        Xo,;:cllooooooddooo0W
                        d;cllooddddddxxddOW
                        Nd:ooddddddxxkkxdd0
                        Xocodxxxdddxxxxxxd0
                        Klcddxkkxddxxxxxxd0
                        0ccodxkkkxxxkkxxxd0W



', 

' 
                               WWM
                              kO0XN
                              xkxx0W    0XNW
                  X00         dxkkx0    OxkkK 
                 Kdoxk        odkxxlO   0xxkk0
                 XdoxxO       ddkkxlO   0xxkk0
                 k0odxxK      ddkkklO   KddxkO
                  kldxOXW     KddkOOO   0xxOk0
                   XxdkO0k    KddkOOk   0dxO00
         XkkOl      0odkkOk   dxOOOkK  kdkOkON
         KooxxON    wkodkk0k  xxOOOk0  xxOOk0N
          0ooddkv    XxdkOOK  dkkOk0N dxkOk0W
           Kkooxk0v  WKddkkO0KOkkkOkO0kxkkkkKW          NXXNW
            WKxdxxkK  W0odkOOOOOOOOOOOOO0OOkXM        0OkxxkKW
              NOddkOO XKkkkOOOOOOOOOOOOOO0OkKM      Oddxxkk0N
               WKxdxkOOkkO0OOOOOOkkkOOOOOkkkKW     xldxkxkKW
                 NOdoxkkOOOOOOOOOOkkkOkkkOkkOXW  XxlodddkXW
                   KooxkOOOOOOOOOOOOkkxkkkkOOOKNKxddxxdON 
                   WOloxkOO0000OOO00kxxkkkkkOOkkxddkkxON
                    XdokOO0000OO00OOkxxkxxkkOOkkkkkkkON
                    NxlxkOO000000OOkxxxxxxkkOOOOOOOkON
                    WkldkkO000000OkkxxxxxkkOOOOOkkxkX
                    0llxkOOOO00OkkxxxxkkkkkOOkkxdONW
                     XocodxkOO00OkkxxxkkkkkkkkxdxKW
                     WOccodxkO00OkkkxxxxkkxxxddkX
                      WkccodxkkOkkxxxdddddddod0N
                       Wk::lloddxdddddooolloOX
                        Xo,;:cllooooooddooo0W
                        d;cllooddddddxxddOW
                        Nd:ooddddddxxkkxdd0
                        Xocodxxxdddxxxxxxd0
                        Klcddxkkxddxxxxxxd0
                        0ccodxkkkxxxkkxxxd0W







'






    ]
    
    # lose1.each do |i| 
    #   # puts `clear`  
    #   puts i
    #     puts `clear`
    # end 


    def self.animation_player(string)
      string.each do |n|
      print `clear`, "
      
      
      
      
      ", n 
        sleep(0.5)
      end 
      print "\n"
    
    end 
    
    
end 

# test = ['t','e','s','t']
# ::Animations.animation_player(test)