
###############################################################
## Player variables

scoreboard objectives remove cgame_score
scoreboard objectives remove cgame_kills
scoreboard objectives remove cgame_kill_detect
scoreboard objectives remove cgame_on
scoreboard objectives remove cgame_temp

scoreboard objectives add cgame_score dummy "Score"
scoreboard objectives add cgame_kills minecraft.custom:minecraft.player_kills
scoreboard objectives add cgame_kill_detect minecraft.custom:minecraft.player_kills
scoreboard objectives add cgame_on dummy
scoreboard objectives add cgame_temp dummy


###############################################################
## Global variables/settings

scoreboard objectives remove cgame_setting
scoreboard objectives add cgame_setting dummy

##### Here the -1 values are either manually replaced through the menu or overwritten by the start function
scoreboard players set #cgame_preptime cgame_setting 0
scoreboard players set #cgame_time_to_win cgame_setting 999999
scoreboard players set #cgame_score_to_win cgame_setting 999999
scoreboard players set #cgame_curse_active cgame_setting 0

# This will be used to set the worldborder to 100*cgame_map_size
scoreboard players set #cgame_map_size cgame_setting 3


###############################################################
## Teams

team remove cgame_increment
team remove cgame_decrement
team remove cgame_regular

team add cgame_increment
team add cgame_decrement
team add cgame_regular

team modify cgame_increment color gold
team modify cgame_decrement color dark_purple
team modify cgame_regular color dark_red

team modify cgame_increment nametagVisibility never
team modify cgame_decrement nametagVisibility never
team modify cgame_regular nametagVisibility never

say Cedric Composer Module: reloaded!

