
scoreboard players set @a cgame_on 1
scoreboard players set @a[scores={cfp_is_fake_player=1}] cgame_on 0

scoreboard players set #ccompass_active ccompass_setting 1

function ctime:reset

scoreboard objectives setdisplay sidebar cgame_score

gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true
gamerule spawnRadius 0

gamemode survival @a[scores={cgame_on=1}]
advancement revoke @a[scores={cgame_on=1}] everything

effect clear @a[scores={cgame_on=1}]
effect give @a[scores={cgame_on=1}] resistance 10 255
effect give @a[scores={cgame_on=1}] regeneration 10 10
effect give @a[scores={cgame_on=1}] saturation 10 10

xp set @a[scores={cgame_on=1}] 0 levels
xp set @a[scores={cgame_on=1}] 0 points

clear @a[scores={cgame_on=1}]
give @a[scores={cgame_on=1}] compass
execute as @a[scores={cgame_on=1}] run function cgame:give_respawn_set
execute as @a[scores={cgame_on=1}] run function cgame:give_starter_kit

function cgame:find_start_location
tp @a[scores={cgame_on=1}] ~ ~ ~

## Note: armor stands are cleared in the load function
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,CustomName:"\"cgame_map_center\"",CustomNameVisible:0b}
execute if score #cgame_include_hill cgame_setting matches 1 unless entity @e[type=armor_stand,name=cgame_hill] run function cgame:place_hill_here

time set 0
weather clear

execute in minecraft:overworld run worldborder center ~ ~
setworldspawn ~ ~ ~

## Set world spawn as the default spawnpoint (will be overritten by the spread function)
spawnpoint @a[scores={cgame_on=1}] ~ ~ ~

execute if score #cgame_map_size cgame_setting matches ..1 run execute in minecraft:overworld run worldborder set 100
execute if score #cgame_map_size cgame_setting matches 2 run execute in minecraft:overworld run worldborder set 200
execute if score #cgame_map_size cgame_setting matches 3 run execute in minecraft:overworld run worldborder set 300
execute if score #cgame_map_size cgame_setting matches 4 run execute in minecraft:overworld run worldborder set 400
execute if score #cgame_map_size cgame_setting matches 5.. run execute in minecraft:overworld run worldborder set 500

scoreboard players set @a[scores={cgame_on=1}] cgame_relocate 1
function cgame:spread_players

execute if score #cgame_preptime cgame_setting matches 1.. run title @a[scores={cgame_on=1}] title {"text":"Get ready!","color":"gold"}
execute if score #cgame_preptime cgame_setting matches 1.. run title @a[scores={cgame_on=1}] subtitle {"text":"This is the preparation phase","color":"gold"}
execute if score #cgame_preptime cgame_setting matches 1.. run tellraw @a[scores={cgame_on=1}] [{"text":"You have ","color":"gold"},{"score":{"name": "#cgame_preptime", "objective": "cgame_setting"},"color":"gold"},{"text":" seconds to prepare before the game begins","color":"gold"}]

tellraw @a[scores={cgame_on=1}] " "
execute if score #cgame_preptime cgame_setting matches 0 run title @a[scores={cgame_on=1}] title {"text":"Game Starts Now!","color":"gold"}
execute if score #cgame_preptime cgame_setting matches 0 run tellraw @a[scores={cgame_on=1}] [{"text":"Game started! No preparation time.","color":"gold"}]

tellraw @a[scores={cgame_on=1}] " "
tellraw @a[scores={cgame_on=1}] [{"text":"Game max duration is set to ","color":"gold"},{"score":{"name": "#cgame_time_to_win", "objective": "cgame_setting"},"color":"gold"},{"text":" seconds","color":"gold"}]
tellraw @a[scores={cgame_on=1}] [{"text":"Score to win is set to ","color":"gold"},{"score":{"name": "#cgame_score_to_win", "objective": "cgame_setting"},"color":"gold"}]
tellraw @a[scores={cgame_on=1}] [{"text":"Map size is set to ","color":"gold"},{"score":{"name": "#cgame_map_size", "objective": "cgame_setting"},"color":"gold"},{"text":" x 100 blocks","color":"gold"}]
execute if score #cgame_shrink_border cgame_setting matches 0 run tellraw @a[scores={cgame_on=1}] [{"text":"World border is fixed","color":"gold"}]
execute if score #cgame_shrink_border cgame_setting matches 1 run tellraw @a[scores={cgame_on=1}] [{"text":"World border will shrink (after preptime)","color":"red"}]
execute if score #cgame_curse_active cgame_setting matches 0 run tellraw @a[scores={cgame_on=1}] [{"text":"Cursed tag is disabled","color":"gold"}]
execute if score #cgame_curse_active cgame_setting matches 1 run tellraw @a[scores={cgame_on=1}] [{"text":"Cursed tag is enabled","color":"red"}]

tellraw @a[scores={cgame_on=1}] " "

