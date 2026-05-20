
scoreboard players set @a flsheep_On 1
scoreboard players set @a[scores={cfp_is_fake_player=1}] flsheep_On 0

scoreboard players set @a[scores={flsheep_On=1}] flsheep_Score 0
scoreboard players set @a[scores={flsheep_On=1}] flsheep_DeathCnt 0

scoreboard players set #flsheep_Delay flsheep_variable 0

scoreboard objectives setdisplay sidebar flsheep_Score

# Gamerules
gamerule keep_inventory false
gamerule immediate_respawn true
gamerule advance_time false
gamerule natural_health_regeneration false
gamerule mob_griefing true

# World
execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 1000000
setworldspawn ~ 0 ~
time set 18000
weather clear 999999

# Tp all players to bring them in the correct dimension
tp @a[scores={flsheep_On=1}] @s

# Generate map
execute if score #flsheep_NumTeams flsheep_variable matches 2 run function flsheep:generatemap2
execute if score #flsheep_NumTeams flsheep_variable matches 4 run function flsheep:generatemap4

# Fill teams randomly if teams have not been manually set up
# This is called only if all teams are empty
execute if score #flsheep_NumTeams flsheep_variable matches 2 unless entity @r[team=team1] unless entity @r[team=team2] run function teams:dorandomteams2
execute if score #flsheep_NumTeams flsheep_variable matches 4 unless entity @r[team=team1] unless entity @r[team=team2] unless entity @r[team=team3] unless entity @r[team=team4] run function teams:dorandomteams4

# Tp players on their platform
execute at @e[type=armor_stand,name=team1] run tp @a[team=team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run tp @a[team=team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run tp @a[team=team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run tp @a[team=team4] ~ ~ ~

# Set player spawn on platforms
execute at @e[type=armor_stand,name=team1] run spawnpoint @a[team=team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run spawnpoint @a[team=team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run spawnpoint @a[team=team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run spawnpoint @a[team=team4] ~ ~ ~

# Effects
effect clear @a[scores={flsheep_On=1}]
effect give @a[scores={flsheep_On=1}] resistance 10 255
effect give @a[scores={flsheep_On=1}] regeneration 10 10
effect give @a[scores={flsheep_On=1}] saturation 10 10

# Inventory and gamemode
clear @a[scores={flsheep_On=1}]
gamemode adventure @a[scores={flsheep_On=1}]

# Game starts message
title @a[scores={flsheep_On=1}] title {text:'Go!',color:gold}
tellraw @a[scores={flsheep_On=1}] {text:'Flying Sheep: Bring 20 sheep to your base to win.',color:gold}
tellraw @a[scores={flsheep_On=1}] {text:'Flying Sheep: Game starts now!',color:gold}


