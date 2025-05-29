
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


#######################################################
## Settings

scoreboard objectives remove koth_setting
scoreboard objectives add koth_setting dummy

scoreboard players set #koth_time_to_win koth_setting 1200


say Cedric Koth: reloaded!

