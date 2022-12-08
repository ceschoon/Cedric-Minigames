# Currently no specific reload action to take besides those in base game "tag"

scoreboard objectives remove tag_kbrunner
scoreboard objectives remove tag_kbhunter1
scoreboard objectives remove tag_kbhunter2
scoreboard objectives remove tag_kbhunter3
scoreboard objectives remove tag_kbhunter4
scoreboard objectives remove tag_kbhunter5
scoreboard objectives remove tag_kbhunter6
scoreboard objectives remove tag_kbhunter7
scoreboard objectives remove tag_kbhunter8

scoreboard objectives add tag_kbrunner killedByTeam.gold
scoreboard objectives add tag_kbhunter1 killedByTeam.green
scoreboard objectives add tag_kbhunter2 killedByTeam.dark_green
scoreboard objectives add tag_kbhunter3 killedByTeam.blue
scoreboard objectives add tag_kbhunter4 killedByTeam.dark_blue
scoreboard objectives add tag_kbhunter5 killedByTeam.aqua
scoreboard objectives add tag_kbhunter6 killedByTeam.dark_aqua
scoreboard objectives add tag_kbhunter7 killedByTeam.light_purple
scoreboard objectives add tag_kbhunter8 killedByTeam.dark_purple

team remove tag_runner
team remove tag_hunter1
team remove tag_hunter2
team remove tag_hunter3
team remove tag_hunter4
team remove tag_hunter5
team remove tag_hunter6
team remove tag_hunter7
team remove tag_hunter8

team add tag_runner
team add tag_hunter1
team add tag_hunter2
team add tag_hunter3
team add tag_hunter4
team add tag_hunter5
team add tag_hunter6
team add tag_hunter7
team add tag_hunter8

team modify tag_runner color gold
team modify tag_hunter1 color green
team modify tag_hunter2 color dark_green
team modify tag_hunter3 color blue
team modify tag_hunter4 color dark_blue
team modify tag_hunter5 color aqua
team modify tag_hunter6 color dark_aqua
team modify tag_hunter7 color light_purple
team modify tag_hunter8 color dark_purple

say Cedric Tag: reloaded teams module!

