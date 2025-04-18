
###############################################################
## Player variables

scoreboard objectives remove tag_Score
scoreboard objectives remove tag_Kills
scoreboard objectives remove tag_KillDetect
scoreboard objectives remove tag_Tag
scoreboard objectives remove tag_On

scoreboard objectives add tag_Score dummy "Time Tagged"
scoreboard objectives add tag_Kills minecraft.custom:minecraft.player_kills
scoreboard objectives add tag_KillDetect minecraft.custom:minecraft.player_kills
scoreboard objectives add tag_Tag dummy
scoreboard objectives add tag_On dummy


###############################################################
## Global variables/settings

scoreboard objectives remove tag_setting
scoreboard objectives add tag_setting dummy

##### Here the -1 values are either manually replaced through the menu or overwritten by the start function
scoreboard players set #tag_PrepTime tag_setting 0
scoreboard players set #tag_Gamemode tag_setting 0
scoreboard players set #tag_TimeToWin tag_setting 999999


###############################################################
## Teams

team remove tag_runner
team remove tag_hunter

team add tag_runner
team add tag_hunter

team modify tag_runner color gold
team modify tag_hunter color dark_red

team modify tag_runner nametagVisibility never
team modify tag_hunter nametagVisibility never

say Cedric Tag: reloaded!
