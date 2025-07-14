
scoreboard players set @a cgame_on 1
scoreboard players set @a[scores={cfp_is_fake_player=1}] cgame_on 0

scoreboard players set @a[scores={cgame_on=1}] cgame_score 0
scoreboard players set @a[scores={cgame_on=1}] cgame_kills 0
scoreboard players set @a[scores={cgame_on=1}] cgame_kill_detect 0
scoreboard players set @a[scores={cgame_on=1}] cgame_kill_streak 0

function ctime:reset

scoreboard objectives setdisplay sidebar cgame_score

gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

gamemode survival @a[scores={cgame_on=1}]
advancement revoke @a[scores={cgame_on=1}] everything

effect clear @a[scores={cgame_on=1}]
effect give @a[scores={cgame_on=1}] resistance 10 255
effect give @a[scores={cgame_on=1}] regeneration 10 10
effect give @a[scores={cgame_on=1}] saturation 10 10

clear @a[scores={cgame_on=1}]
give @a[scores={cgame_on=1}] compass
execute as @a[scores={cgame_on=1}] run function cgame:give_starter_kit
execute as @a[scores={cgame_on=1}] run function cgame:give_respawn_set

tp @a[scores={cgame_on=1}] ~ ~ ~

## Note: armor stands cleared in load function
execute if score #cgame_include_hill cgame_setting matches 1 unless entity @e[type=armor_stand,name=cgame_hill] run function cgame:place_hill_here

time set 0
weather clear

execute in minecraft:overworld run worldborder center ~ ~
setworldspawn ~ ~ ~

execute if score #cgame_map_size cgame_setting matches ..1 run execute in minecraft:overworld run worldborder set 100
execute if score #cgame_map_size cgame_setting matches 2 run execute in minecraft:overworld run worldborder set 200
execute if score #cgame_map_size cgame_setting matches 3 run execute in minecraft:overworld run worldborder set 300
execute if score #cgame_map_size cgame_setting matches 4 run execute in minecraft:overworld run worldborder set 400
execute if score #cgame_map_size cgame_setting matches 5.. run execute in minecraft:overworld run worldborder set 500

###### Spread Players (use dimroof variable from compass module)
execute if score #cgame_map_size cgame_setting matches ..1 if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 40 40 false @a[scores={cgame_on=1}]
execute if score #cgame_map_size cgame_setting matches 2 if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 80 80 false @a[scores={cgame_on=1}]
execute if score #cgame_map_size cgame_setting matches 3 if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 120 120 false @a[scores={cgame_on=1}]
execute if score #cgame_map_size cgame_setting matches 4 if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 160 160 false @a[scores={cgame_on=1}]
execute if score #cgame_map_size cgame_setting matches 5.. if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 200 200 false @a[scores={cgame_on=1}]

execute if score #cgame_map_size cgame_setting matches ..1 if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 40 40 under 127 false @a[scores={cgame_on=1}]
execute if score #cgame_map_size cgame_setting matches 2 if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 80 80 under 127 false @a[scores={cgame_on=1}]
execute if score #cgame_map_size cgame_setting matches 3 if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 120 120 under 127 false @a[scores={cgame_on=1}]
execute if score #cgame_map_size cgame_setting matches 4 if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 160 160 under 127 false @a[scores={cgame_on=1}]
execute if score #cgame_map_size cgame_setting matches 5.. if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 200 200 under 127 false @a[scores={cgame_on=1}]
######

execute as @a[scores={cgame_on=1}] at @s run spawnpoint @s ~ ~ ~

execute if score #cgame_include_barrel_drops cgame_setting matches 1 run execute store result score #cmagic_barrel_drop_delay cmagic_variable run scoreboard players get #cgame_preptime cgame_setting
execute if score #cgame_include_barrel_drops cgame_setting matches 1 run scoreboard players add #cmagic_barrel_drop_delay cmagic_variable 100

title @a[scores={cgame_on=1}] title {"text":"Game Starts Now!","color":"gold"}

