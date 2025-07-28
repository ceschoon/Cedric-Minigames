
## Copy the target variable

scoreboard objectives remove ccompass_target_copy
scoreboard objectives add ccompass_target_copy dummy
execute as @e run store result score @s ccompass_target_copy run scoreboard players get @s ccompass_target_copy

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

execute at @s if entity @e[scores={ccompass_target_copy=1..}] store result score @s X run data get entity @n[scores={ccompass_target_copy=1..}] Pos[0] 1
execute at @s if entity @e[scores={ccompass_target_copy=1..}] store result score @s Y run data get entity @n[scores={ccompass_target_copy=1..}] Pos[1] 1
execute at @s if entity @e[scores={ccompass_target_copy=1..}] store result score @s Z run data get entity @n[scores={ccompass_target_copy=1..}] Pos[2] 1

## Tell the approximate y level of the target

execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..},x=-1000000,dx=2000000,y=-64,dy=64,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is below y=0"}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..},x=-1000000,dx=2000000,y=0,dy=64,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is below y=64"}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..},x=-1000000,dx=2000000,y=64,dy=64,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is above y=64"}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..},x=-1000000,dx=2000000,y=128,dy=64,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is above y=128"}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..},x=-1000000,dx=2000000,y=192,dy=64,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is above y=192"}]
execute at @s if entity @s[scores={ccompass_dropped=1..}] if entity @n[scores={ccompass_target_copy=1..},x=-1000000,dx=2000000,y=256,dy=1000000,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@n[scores={ccompass_target_copy=1..}]"},{"text":" is above y=256"}]


