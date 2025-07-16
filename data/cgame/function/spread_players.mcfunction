
######################################################
## Read current map size

execute store result score #cgame_current_map_size cgame_temp run worldborder get


######################################################
## Adapt distances based on the map size
## No spread if map is too small !!

execute if score #cgame_current_map_size cgame_temp matches 100..199 at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 40 40 false @a[scores={cgame_relocate=1}]
execute if score #cgame_current_map_size cgame_temp matches 200..299 at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 80 80 false @a[scores={cgame_relocate=1}]
execute if score #cgame_current_map_size cgame_temp matches 300..399 at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 120 120 false @a[scores={cgame_relocate=1}]
execute if score #cgame_current_map_size cgame_temp matches 400..499 at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 160 160 false @a[scores={cgame_relocate=1}]
execute if score #cgame_current_map_size cgame_temp matches 500.. at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 200 200 false @a[scores={cgame_relocate=1}]


######################################################
## For dimensions with a roof, such as the nether,
## we need to spread under the roof height

execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] if score #cgame_current_map_size cgame_temp matches 100..199 at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 40 40 under 127 false @a[scores={cgame_relocate=1}]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] if score #cgame_current_map_size cgame_temp matches 200..299 at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 80 80 under 127 false @a[scores={cgame_relocate=1}]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] if score #cgame_current_map_size cgame_temp matches 300..399 at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 120 120 under 127 false @a[scores={cgame_relocate=1}]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] if score #cgame_current_map_size cgame_temp matches 400..499 at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 160 160 under 127 false @a[scores={cgame_relocate=1}]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] if score #cgame_current_map_size cgame_temp matches 500.. at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 200 200 under 127 false @a[scores={cgame_relocate=1}]


######################################################
## Finish

####execute as @a[scores={cgame_relocate=1}] at @s run spawnpoint @s ~ ~ ~
scoreboard players set @a[scores={cgame_relocate=1}] cgame_relocate 0

