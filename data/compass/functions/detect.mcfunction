
scoreboard objectives add temp_target dummy
scoreboard players set @a temp_target 0

## If you are NOT a target, the compass points towards the nearest target 
## If you ARE a target, the compass points to the nearest player 
## The compass always ignore players within a distance of 5 blocks

execute if entity @s[scores={target=0}] run scoreboard players set @p[distance=5..,scores={target=1}] temp_target 1
execute if entity @s[scores={target=1}] run scoreboard players set @p[distance=5..] temp_target 1

execute if entity @p[scores={temp_target=1}] store result score @s X run data get entity @p[scores={temp_target=1}] Pos[0] 1
execute if entity @p[scores={temp_target=1}] store result score @s Y run data get entity @p[scores={temp_target=1}] Pos[1] 1
execute if entity @p[scores={temp_target=1}] store result score @s Z run data get entity @p[scores={temp_target=1}] Pos[2] 1

## Tell the approximate y level of the target

execute if entity @s[scores={drop=1..}] if entity @p[scores={temp_target=1},x=-1000000,dx=2000000,y=-64,dy=64,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@p[scores={temp_target=1}]"},{"text":" is below y=0"}]
execute if entity @s[scores={drop=1..}] if entity @p[scores={temp_target=1},x=-1000000,dx=2000000,y=0,dy=64,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@p[scores={temp_target=1}]"},{"text":" is below y=64"}]
execute if entity @s[scores={drop=1..}] if entity @p[scores={temp_target=1},x=-1000000,dx=2000000,y=64,dy=64,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@p[scores={temp_target=1}]"},{"text":" is above y=64"}]
execute if entity @s[scores={drop=1..}] if entity @p[scores={temp_target=1},x=-1000000,dx=2000000,y=128,dy=64,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@p[scores={temp_target=1}]"},{"text":" is above y=128"}]
execute if entity @s[scores={drop=1..}] if entity @p[scores={temp_target=1},x=-1000000,dx=2000000,y=192,dy=64,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@p[scores={temp_target=1}]"},{"text":" is above y=192"}]
execute if entity @s[scores={drop=1..}] if entity @p[scores={temp_target=1},x=-1000000,dx=2000000,y=256,dy=1000000,z=-1000000,dz=2000000] run title @s actionbar [{"text":"Target "},{"selector":"@p[scores={temp_target=1}]"},{"text":" is above y=256"}]

scoreboard objectives remove temp_target

