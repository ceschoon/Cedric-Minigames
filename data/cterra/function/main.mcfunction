
## Update variable tracking position in spiral arm
scoreboard players set #is_outside_perimeter cterra_variable 0
execute if score #side_pos cterra_variable < #side_len cterra_variable run scoreboard players add #side_pos cterra_variable 1
execute if score #side_pos cterra_variable = #side_max cterra_variable run scoreboard players set #is_outside_perimeter cterra_variable 1
execute if score #side_pos cterra_variable = #side_len cterra_variable run scoreboard players set #side_pos cterra_variable 0

## Update variable tracking direction of spiral arms
execute if score #side_pos cterra_variable matches 0 run scoreboard players add #side_dir cterra_variable 1
execute if score #side_dir cterra_variable matches 4.. run scoreboard players set #side_dir cterra_variable 0

## Update variable tracking length of spiral arms
execute if score #side_pos cterra_variable matches 0 if score #side_dir cterra_variable matches 1 run scoreboard players add #side_len cterra_variable 1
execute if score #side_pos cterra_variable matches 0 if score #side_dir cterra_variable matches 3 run scoreboard players add #side_len cterra_variable 1

## Finish perimeter with the centre
execute if score #is_outside_perimeter cterra_variable matches 1 as @e[type=armor_stand,name=terraform_map_center] at @s run tp @e[type=armor_stand,name=terraform_marker_dig] ~ ~ ~
execute if score #is_outside_perimeter cterra_variable matches 1 run scoreboard players set #side_pos cterra_variable 0
execute if score #is_outside_perimeter cterra_variable matches 1 run scoreboard players set #side_dir cterra_variable 0
execute if score #is_outside_perimeter cterra_variable matches 1 run scoreboard players set #side_len cterra_variable 0

## Ensure proper y level
execute as @e[type=armor_stand,name=terraform_marker_dig] at @s run function cterra:position_y

## Move digging marker along spiral arm
scoreboard players remove #side_max cterra_variable 1
execute unless score #side_pos cterra_variable = #side_max cterra_variable as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_pos cterra_variable < #side_len cterra_variable if score #side_dir cterra_variable matches 0 run tp @s ~40 ~ ~
execute unless score #side_pos cterra_variable = #side_max cterra_variable as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_pos cterra_variable < #side_len cterra_variable if score #side_dir cterra_variable matches 1 run tp @s ~ ~ ~40
execute unless score #side_pos cterra_variable = #side_max cterra_variable as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_pos cterra_variable < #side_len cterra_variable if score #side_dir cterra_variable matches 2 run tp @s ~-40 ~ ~
execute unless score #side_pos cterra_variable = #side_max cterra_variable as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_pos cterra_variable < #side_len cterra_variable if score #side_dir cterra_variable matches 3 run tp @s ~ ~ ~-40
scoreboard players add #side_max cterra_variable 1

## Height-dependent phases (note that we re-delete the upper layer, to clean flowing water)
execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -63.. run fill ~-20 ~ ~-20 ~20 ~1 ~20 air
execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -64 run function cterra:layers/abstract_layer
execute if score #side_hgt cterra_variable matches ..-65 run kill @e[type=armor_stand,name=terraform_marker_dig]
execute if score #side_hgt cterra_variable matches ..-65 run kill @e[type=armor_stand,name=terraform_map_center]

## Debug markers
#execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -63.. if score #side_len cterra_variable matches 1 run fill ~-1 ~ ~-1 ~1 ~ ~1 glass
#execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -63.. if score #side_len cterra_variable matches 2 run fill ~-2 ~ ~-2 ~2 ~ ~2 glass
#execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -63.. if score #side_len cterra_variable matches 3 run fill ~-3 ~ ~-3 ~3 ~ ~3 glass
#execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -63.. if score #side_len cterra_variable matches 4 run fill ~-4 ~ ~-4 ~4 ~ ~4 glass
#execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -63.. if score #side_len cterra_variable matches 5 run fill ~-5 ~ ~-5 ~5 ~ ~5 glass

## Debug markers
#execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -63.. if score #side_dir cterra_variable matches 0 run setblock ~ ~ ~ lime_wool
#execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -63.. if score #side_dir cterra_variable matches 1 run setblock ~ ~ ~ red_wool
#execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -63.. if score #side_dir cterra_variable matches 2 run setblock ~ ~ ~ blue_wool
#execute as @e[type=armor_stand,name=terraform_marker_dig] at @s if score #side_hgt cterra_variable matches -63.. if score #side_dir cterra_variable matches 3 run setblock ~ ~ ~ yellow_wool

## After layer completed, jump to the layer below
execute if score #is_outside_perimeter cterra_variable matches 1 run scoreboard players remove #side_hgt cterra_variable 1

## User feedback messages
execute if entity @e[type=armor_stand,name=terraform_marker_dig] run tellraw @a [{text:'Terraforming layer y=',color:gold},{score:{name:'#side_hgt',objective:'cterra_variable'},color:gold},{text:' len=',color:gold},{score:{name:'#side_len',objective:'cterra_variable'},color:gold},{text:'/',color:gold},{score:{name:'#side_max',objective:'cterra_variable'},color:gold},{text:' dir=',color:gold},{score:{name:'#side_dir',objective:'cterra_variable'},color:gold},{text:' pos=',color:gold},{score:{name:'#side_pos',objective:'cterra_variable'},color:gold},{text:'/',color:gold},{score:{name:'#side_len',objective:'cterra_variable'},color:gold}]
execute unless entity @e[type=armor_stand,name=terraform_map_center] run tellraw @a [{text:'Terraforming completed',color:gold}]
