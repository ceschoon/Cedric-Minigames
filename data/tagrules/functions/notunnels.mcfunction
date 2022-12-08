
scoreboard objectives remove tag_temp
scoreboard objectives add tag_temp dummy

scoreboard players set @s tag_temp 0

execute if block ~ ~1 ~ stone run scoreboard players set @s tag_temp 1
execute if block ~ ~1 ~ cobblestone run scoreboard players set @s tag_temp 1
execute if block ~ ~1 ~ dirt run scoreboard players set @s tag_temp 1
execute if block ~ ~1 ~ diorite run scoreboard players set @s tag_temp 1
execute if block ~ ~1 ~ granite run scoreboard players set @s tag_temp 1
execute if block ~ ~1 ~ andesite run scoreboard players set @s tag_temp 1

execute if entity @s[scores={tag_temp=1}] run effect give @s poison 5
execute if entity @s[scores={tag_temp=1}] run effect give @s mining_fatigue 5
execute if entity @s[scores={tag_temp=1}] run title @s actionbar {"text":"You cannot move in 1x1 tunnels","color":"red"}
