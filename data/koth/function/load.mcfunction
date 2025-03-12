
scoreboard objectives remove koth_On
scoreboard objectives remove koth_SecondsOnPlatform

scoreboard objectives add koth_On dummy
scoreboard objectives add koth_SecondsOnPlatform dummy "Time on Platform"

team remove offhill
team remove onhill

team add offhill
team add onhill

team modify offhill color gray
team modify onhill color gold

team modify offhill nametagVisibility never
team modify onhill nametagVisibility never

say Cedric Koth: reloaded!

