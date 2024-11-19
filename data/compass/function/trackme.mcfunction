
scoreboard players set @a target 0
scoreboard players set @s target 1

execute store result score @a X run data get entity @s Pos[0] 1
execute store result score @a Y run data get entity @s Pos[1] 1
execute store result score @a Z run data get entity @s Pos[2] 1
