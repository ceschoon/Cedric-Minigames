
## Copy the target variable

scoreboard objectives remove ccompass_target_copy
scoreboard objectives add ccompass_target_copy dummy
execute as @e store result score @s ccompass_target_copy run scoreboard players get @s ccompass_target

## Exclude yourself from the target list

scoreboard players set @s ccompass_target_copy 0

## Exclude spatially close players from the target list

scoreboard players set @e[distance=..5,scores={ccompass_target_copy=1..}] ccompass_target_copy 0

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

## Type 10x tracks players in ccompass_group=x (and target priority>=1)

execute if score @s ccompass_type matches 101 as @e unless entity @s[type=player,scores={ccompass_group=1,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 102 as @e unless entity @s[type=player,scores={ccompass_group=2,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 103 as @e unless entity @s[type=player,scores={ccompass_group=3,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 104 as @e unless entity @s[type=player,scores={ccompass_group=4,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 105 as @e unless entity @s[type=player,scores={ccompass_group=5,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 106 as @e unless entity @s[type=player,scores={ccompass_group=6,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 107 as @e unless entity @s[type=player,scores={ccompass_group=7,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 108 as @e unless entity @s[type=player,scores={ccompass_group=8,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 109 as @e unless entity @s[type=player,scores={ccompass_group=9,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 110 as @e unless entity @s[type=player,scores={ccompass_group=10,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 111 as @e unless entity @s[type=player,scores={ccompass_group=11,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 112 as @e unless entity @s[type=player,scores={ccompass_group=12,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 113 as @e unless entity @s[type=player,scores={ccompass_group=13,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 114 as @e unless entity @s[type=player,scores={ccompass_group=14,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 115 as @e unless entity @s[type=player,scores={ccompass_group=15,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0
execute if score @s ccompass_type matches 116 as @e unless entity @s[type=player,scores={ccompass_group=16,ccompass_target_copy=1..}] run scoreboard players set @s ccompass_target_copy 0

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

execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..}] if score #target_dy ccompass_variable matches ..-30 run title @s actionbar [{text:'Target '},{selector:'@n[scores={ccompass_target_copy=1..}]'},{text:' is far below you'}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..}] if score #target_dy ccompass_variable matches -29..-2 run title @s actionbar [{text:'Target '},{selector:'@n[scores={ccompass_target_copy=1..}]'},{text:' is below you'}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..}] if score #target_dy ccompass_variable matches -1..1 run title @s actionbar [{text:'Target '},{selector:'@n[scores={ccompass_target_copy=1..}]'},{text:' is level with you'}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..}] if score #target_dy ccompass_variable matches 2..29 run title @s actionbar [{text:'Target '},{selector:'@n[scores={ccompass_target_copy=1..}]'},{text:' is above you'}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..}] if score #target_dy ccompass_variable matches 30.. run title @s actionbar [{text:'Target '},{selector:'@n[scores={ccompass_target_copy=1..}]'},{text:' is far above you'}]

