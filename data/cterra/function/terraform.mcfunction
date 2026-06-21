
## Worldborder must be 40*side_max and side_max must be an odd integer

kill @e[type=armor_stand,name=terraform_map_center]
kill @e[type=armor_stand,name=terraform_marker_dig]

execute align xy positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,CustomName:"terraform_map_center",CustomNameVisible:0b}
execute align xy positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,CustomName:"terraform_marker_dig",CustomNameVisible:0b}

execute align xy positioned ~.5 ~ ~.5 run setworldspawn ~ ~ ~
execute align xy positioned ~.5 ~ ~.5 run worldborder center ~ ~
worldborder set 200

scoreboard players set #side_pos cterra_variable 0
scoreboard players set #side_dir cterra_variable 0
scoreboard players set #side_len cterra_variable 0
scoreboard players set #side_max cterra_variable 5

#scoreboard players set #side_hgt cterra_variable 126
execute store result score #side_hgt cterra_variable run data get entity @n[type=armor_stand,name=terraform_map_center] Pos[1] 1

## Mark the map centre for future command execution
execute as @e[type=armor_stand,name=terraform_map_center] at @s run setblock ~ ~2 ~ crying_obsidian
execute as @e[type=armor_stand,name=terraform_map_center] at @s run setblock ~ ~3 ~ oak_sign
execute as @e[type=armor_stand,name=terraform_map_center] at @s run data merge block ~ ~3 ~ {front_text:{messages:['Dont move far','','Start your','game here']}}
execute as @e[type=armor_stand,name=terraform_map_center] at @s run tp @p ~ ~3 ~
