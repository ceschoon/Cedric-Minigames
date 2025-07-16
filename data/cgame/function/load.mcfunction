
###############################################################
## Default Gamerules (for the entire datapack)

gamerule keepInventory true
gamerule showDeathMessages true
gamerule doImmediateRespawn true
gamerule naturalRegeneration true
gamerule doDaylightCycle false
gamerule randomTickSpeed 300
gamerule mobGriefing true
gamerule doInsomnia false
gamerule spawnRadius 0

execute as @a run attribute @s minecraft:max_health base set 20


###############################################################
## Player variables

scoreboard objectives remove cgame_score
scoreboard objectives remove cgame_kills
scoreboard objectives remove cgame_kill_detect
scoreboard objectives remove cgame_kill_streak
scoreboard objectives remove cgame_on
scoreboard objectives remove cgame_temp
scoreboard objectives remove cgame_starting_team
scoreboard objectives remove cgame_is_on_hill
scoreboard objectives remove cgame_time_copy_for_display
scoreboard objectives remove cgame_relocate

scoreboard objectives add cgame_score dummy "Score"
scoreboard objectives add cgame_kills minecraft.custom:minecraft.player_kills
scoreboard objectives add cgame_kill_detect minecraft.custom:minecraft.player_kills
scoreboard objectives add cgame_kill_streak minecraft.custom:minecraft.player_kills
scoreboard objectives add cgame_on dummy
scoreboard objectives add cgame_temp dummy
scoreboard objectives add cgame_starting_team dummy
scoreboard objectives add cgame_is_on_hill dummy
scoreboard objectives add cgame_time_copy_for_display dummy
scoreboard objectives add cgame_relocate dummy


###############################################################
## Global variables/settings

scoreboard objectives remove cgame_setting
scoreboard objectives add cgame_setting dummy

scoreboard players set #cgame_preptime cgame_setting 0
scoreboard players set #cgame_time_to_win cgame_setting 999999
scoreboard players set #cgame_score_to_win cgame_setting 999999
scoreboard players set #cgame_curse_active cgame_setting 0
scoreboard players set #cgame_include_hill cgame_setting 0
scoreboard players set #cgame_include_boss cgame_setting 0
scoreboard players set #cgame_include_barrel_drops cgame_setting 0
scoreboard players set #cgame_starter_kit cgame_setting 0

# This will be used to set the worldborder to 100*cgame_map_size
scoreboard players set #cgame_map_size cgame_setting 3


###############################################################
## OVERRIDE some values to have a playable (tag) game by default

function cgame:presets/tag_normal


###############################################################
## Teams

team remove cgame_regular
team remove cgame_increment
team remove cgame_decrement
team remove cgame_boss
team remove cgame_hunter

team add cgame_regular
team add cgame_increment
team add cgame_decrement
team add cgame_boss
team add cgame_hunter

team modify cgame_regular color gray
team modify cgame_increment color gold
team modify cgame_decrement color dark_red
team modify cgame_boss color light_purple
team modify cgame_hunter color dark_purple

team modify cgame_regular nametagVisibility never
team modify cgame_increment nametagVisibility never
team modify cgame_decrement nametagVisibility never
team modify cgame_boss nametagVisibility never
team modify cgame_hunter nametagVisibility never


###############################################################
## Remove armor stands and misc.

kill @e[type=armor_stand,name=cgame_map_center]
kill @e[type=armor_stand,name=cgame_hill]


###############################################################

say Cedric Composer Module: reloaded!

