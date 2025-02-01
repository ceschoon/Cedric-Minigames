
scoreboard objectives remove temp
scoreboard objectives add temp dummy
scoreboard players set @a temp 0
execute as @a if entity @a[scores={pltf_DelayCage=..-1}] store success score @s temp run clear @s iron_bars 1

#execute as @a[scores={temp=1..}] at @e[type=armor_stand,name=diamond] run tp @a[distance=..3] ~ ~5 ~
#execute as @a[scores={temp=1..}] at @e[type=armor_stand,name=diamond] run fill ~-3 ~-1 ~-3 ~3 ~2 ~3 iron_bars
#execute as @a[scores={temp=1..}] at @e[type=armor_stand,name=diamond] run fill ~-3 ~3 ~-3 ~3 ~3 ~3 iron_trapdoor
#execute as @a[scores={temp=1..}] at @e[type=armor_stand,name=diamond] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~
#execute as @a[scores={temp=1..}] run scoreboard players set @s pltf_DelayCage 1000

execute as @a[scores={temp=1..}] unless entity @s[team=team1] at @e[type=armor_stand,name=team1] run tp @a[team=team1] ~ ~ ~
execute as @a[scores={temp=1..}] unless entity @s[team=team1] at @e[type=armor_stand,name=team1] run fill ~-3 ~-1 ~-3 ~3 ~2 ~3 iron_bars
execute as @a[scores={temp=1..}] unless entity @s[team=team1] at @e[type=armor_stand,name=team1] run fill ~-3 ~3 ~-3 ~3 ~3 ~3 iron_trapdoor
execute as @a[scores={temp=1..}] unless entity @s[team=team2] at @e[type=armor_stand,name=team2] run tp @a[team=team2] ~ ~ ~
execute as @a[scores={temp=1..}] unless entity @s[team=team2] at @e[type=armor_stand,name=team2] run fill ~-3 ~-1 ~-3 ~3 ~2 ~3 iron_bars
execute as @a[scores={temp=1..}] unless entity @s[team=team2] at @e[type=armor_stand,name=team2] run fill ~-3 ~3 ~-3 ~3 ~3 ~3 iron_trapdoor
execute as @a[scores={temp=1..}] unless entity @s[team=team3] at @e[type=armor_stand,name=team3] run tp @a[team=team3] ~ ~ ~
execute as @a[scores={temp=1..}] unless entity @s[team=team3] at @e[type=armor_stand,name=team3] run fill ~-3 ~-1 ~-3 ~3 ~2 ~3 iron_bars
execute as @a[scores={temp=1..}] unless entity @s[team=team3] at @e[type=armor_stand,name=team3] run fill ~-3 ~3 ~-3 ~3 ~3 ~3 iron_trapdoor
execute as @a[scores={temp=1..}] unless entity @s[team=team4] at @e[type=armor_stand,name=team4] run tp @a[team=team4] ~ ~ ~
execute as @a[scores={temp=1..}] unless entity @s[team=team4] at @e[type=armor_stand,name=team4] run fill ~-3 ~-1 ~-3 ~3 ~2 ~3 iron_bars
execute as @a[scores={temp=1..}] unless entity @s[team=team4] at @e[type=armor_stand,name=team4] run fill ~-3 ~3 ~-3 ~3 ~3 ~3 iron_trapdoor
execute as @a[scores={temp=1..}] run playsound minecraft:block.end_portal_frame.fill master @a
execute as @a[scores={temp=1..}] run scoreboard players set @s pltf_DelayCage 200

execute if entity @a[scores={pltf_DelayCage=0}] at execute at @e[type=armor_stand,name=diamond] run fill ~-3 ~ ~-3 ~3 ~3 ~3 air replace iron_trapdoor
execute if entity @a[scores={pltf_DelayCage=0}] at execute at @e[type=armor_stand,name=diamond] run fill ~-3 ~ ~-3 ~3 ~3 ~3 air replace iron_bars


