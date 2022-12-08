
# Scoreboards
scoreboard objectives setdisplay sidebar pltf_Score

scoreboard players set @a pltf_On 1
scoreboard players set @a pltf_Score 0
scoreboard players set @a pltf_DelayEmrld 0
scoreboard players set @a pltf_DelayDiamd 0
scoreboard players set @a pltf_DelayWool 0
scoreboard players set @a pltf_DelayFire1 0
scoreboard players set @a pltf_DelayFire2 0
scoreboard players set @a pltf_CountFire1 0
scoreboard players set @a pltf_CountFire2 0
scoreboard players set @a pltf_DeathCount 0

# Gamerules
gamerule keepInventory false
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule naturalRegeneration false
gamerule mobGriefing true

# World
execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 1000000
setworldspawn ~ 0 ~
time set 0
weather clear 999999

# Tp all players to bring them in the correct dimension
tp @a @s

# Generate map
#function platforms:generatemap1
#function platforms:generatemap2

# Fill teams randomly if teams have not been manually set up
# This is called only if all teams are empty
execute if entity @s[scores={pltf_NumTeams=2}] unless entity @r[team=team1] unless entity @r[team=team2] run function teams:dorandomteams2
execute if entity @s[scores={pltf_NumTeams=3}] unless entity @r[team=team1] unless entity @r[team=team2] unless entity @r[team=team3] run function teams:dorandomteams3
execute if entity @s[scores={pltf_NumTeams=4}] unless entity @r[team=team1] unless entity @r[team=team2] unless entity @r[team=team3] unless entity @r[team=team4] run function teams:dorandomteams4

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
effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

# Inventory and gamemode
clear @a
execute as @a run function platforms:clearenderchest 
gamemode survival @a

# Game starts message
title @a title {"text":"Go!","color":"gold"}
tellraw @a {"text":"Platforms: Bring 20 diamonds to your base to win.","color":"gold"}
tellraw @a {"text":"Platforms: Game starts now!","color":"gold"}


