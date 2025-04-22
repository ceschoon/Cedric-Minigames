
## Detect when a player bought the cage
scoreboard objectives remove temp
scoreboard objectives add temp dummy
scoreboard players set @a temp 0
execute as @a if entity @s[scores={pltf_DelayCage=..0}] store success score @s temp run clear @s iron_bars 1

## Lock everyone else on their team platform
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
execute as @a[scores={temp=1..}] run scoreboard players set @s pltf_DelayCage 300

## Remove the cages
execute unless entity @a[scores={pltf_DelayCage=1..},team=!team1] at @e[type=armor_stand,name=team1] run fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air replace iron_trapdoor
execute unless entity @a[scores={pltf_DelayCage=1..},team=!team1] at @e[type=armor_stand,name=team1] run fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air replace iron_bars
execute unless entity @a[scores={pltf_DelayCage=1..},team=!team2] at @e[type=armor_stand,name=team2] run fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air replace iron_trapdoor
execute unless entity @a[scores={pltf_DelayCage=1..},team=!team2] at @e[type=armor_stand,name=team2] run fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air replace iron_bars
execute unless entity @a[scores={pltf_DelayCage=1..},team=!team3] at @e[type=armor_stand,name=team3] run fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air replace iron_trapdoor
execute unless entity @a[scores={pltf_DelayCage=1..},team=!team3] at @e[type=armor_stand,name=team3] run fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air replace iron_bars
execute unless entity @a[scores={pltf_DelayCage=1..},team=!team4] at @e[type=armor_stand,name=team4] run fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air replace iron_trapdoor
execute unless entity @a[scores={pltf_DelayCage=1..},team=!team4] at @e[type=armor_stand,name=team4] run fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air replace iron_bars

