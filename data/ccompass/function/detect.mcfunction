
## Copy the target variable

scoreboard objectives remove ccompass_target_copy
scoreboard objectives add ccompass_target_copy dummy
execute as @e store result score @s ccompass_target_copy run scoreboard players get @s ccompass_target

## Exclude yourself from the target list

scoreboard players set @s ccompass_target_copy 0

## Exclude targets that are not in the same dimension

execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @e[nbt={Dimension:"minecraft:overworld"},scores={ccompass_target_copy=1..}] ccompass_target_copy 0
execute unless entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @e[nbt={Dimension:"minecraft:the_nether"},scores={ccompass_target_copy=1..}] ccompass_target_copy 0
execute unless entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @e[nbt={Dimension:"minecraft:the_end"},scores={ccompass_target_copy=1..}] ccompass_target_copy 0

## Exclude targets depending on compass type
## Type 1 tracks only players (sorted by priority)
## Type 2 tracks only fixed locations (marked by armor stands, sorted by priority)
## Both of them will point preferably towards targets of high priority value

execute if score @s ccompass_type matches 1 run scoreboard players set @e[type=!player,scores={ccompass_target_copy=1..}] ccompass_target_copy 0
execute if score @s ccompass_type matches 2 run scoreboard players set @e[type=!armor_stand,scores={ccompass_target_copy=1..}] ccompass_target_copy 0

## Type 1x, x=1,2,3,4 track players of matching target priority value

#execute if score @s ccompass_type matches 11 as @e unless @s[type=player,scores={ccompass_target_copy=1}] run scoreboard players set @s ccompass_target_copy 0
#execute if score @s ccompass_type matches 12 as @e unless @s[type=player,scores={ccompass_target_copy=2}] run scoreboard players set @s ccompass_target_copy 0
#execute if score @s ccompass_type matches 13 as @e unless @s[type=player,scores={ccompass_target_copy=3}] run scoreboard players set @s ccompass_target_copy 0
#execute if score @s ccompass_type matches 14 as @e unless @s[type=player,scores={ccompass_target_copy=4}] run scoreboard players set @s ccompass_target_copy 0

## Remove entities of low target priority
## Note: This line is repeated 3 times so the filter will only work if there is no targets with priority values above 4

execute if entity @e[scores={ccompass_target_copy=2..}] run scoreboard players remove @e[scores={ccompass_target_copy=1..}] ccompass_target_copy 1
execute if entity @e[scores={ccompass_target_copy=2..}] run scoreboard players remove @e[scores={ccompass_target_copy=1..}] ccompass_target_copy 1
execute if entity @e[scores={ccompass_target_copy=2..}] run scoreboard players remove @e[scores={ccompass_target_copy=1..}] ccompass_target_copy 1

## Store coordinates of the nearest eligible target

execute at @s if entity @e[scores={ccompass_target_copy=1..}] store result score @s ccompass_x run data get entity @n[scores={ccompass_target_copy=1..}] Pos[0] 1
execute at @s if entity @e[scores={ccompass_target_copy=1..}] store result score @s ccompass_y run data get entity @n[scores={ccompass_target_copy=1..}] Pos[1] 1
execute at @s if entity @e[scores={ccompass_target_copy=1..}] store result score @s ccompass_z run data get entity @n[scores={ccompass_target_copy=1..}] Pos[2] 1

## Tell if target is above or below

execute store result score #player_y ccompass_variable run data get entity @s Pos[1] 1
execute store result score #target_dy ccompass_variable run data get entity @n[scores={ccompass_target_copy=1..}] Pos[1] 1
scoreboard players operation #target_dy ccompass_variable -= #player_y ccompass_variable

execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..}] if score #target_dy ccompass_variable matches ..-30 run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is far below you"}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..}] if score #target_dy ccompass_variable matches -29..-2 run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is below you"}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..}] if score #target_dy ccompass_variable matches -1..1 run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is level with you"}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..}] if score #target_dy ccompass_variable matches 2..29 run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is above you"}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..}] if score #target_dy ccompass_variable matches 30.. run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is far above you"}]

