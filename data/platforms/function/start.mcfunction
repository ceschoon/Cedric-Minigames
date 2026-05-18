
scoreboard players set @a pltf_On 1
scoreboard players set @a[scores={cfp_is_fake_player=1}] pltf_On 0

scoreboard players set @a[scores={pltf_On=1}] pltf_Score 0
scoreboard players set @a[scores={pltf_On=1}] pltf_DelayCage 0
scoreboard players set @a[scores={pltf_On=1}] pltf_DelayBlind 0
scoreboard players set @a[scores={pltf_On=1}] pltf_DeathCount 0

scoreboard players set #pltf_DelayDiamd pltf_variable 0
scoreboard players set #pltf_DelayEmrld pltf_variable 0
scoreboard players set #pltf_DelayWool pltf_variable 0
scoreboard players set #pltf_DelayFire1 pltf_variable 0
scoreboard players set #pltf_DelayFire2 pltf_variable 0
scoreboard players set #pltf_DelayFire3 pltf_variable 0
scoreboard players set #pltf_CountFire1 pltf_variable 0
scoreboard players set #pltf_CountFire2 pltf_variable 0
scoreboard players set #pltf_CountFire3 pltf_variable 0

scoreboard objectives setdisplay sidebar pltf_Score

# Gamerules
gamerule keepInventory false
gamerule minecraft:immediate_respawn true
gamerule minecraft:advance_time false
gamerule minecraft:natural_health_regeneration false
gamerule mobGriefing true

# World
execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 1000000
setworldspawn ~ 0 ~
time set 0
weather clear 999999

# Tp all players to bring them in the correct dimension
tp @a[scores={pltf_On=1}] @s

# Generate map
#function platforms:generatemap1
#function platforms:generatemap2

# Fill teams randomly if teams have not been manually set up
# This is called only if all teams are empty
execute if score #pltf_NumTeams pltf_setting matches 2 unless entity @r[team=team1] unless entity @r[team=team2] run function teams:dorandomteams2
execute if score #pltf_NumTeams pltf_setting matches 3 unless entity @r[team=team1] unless entity @r[team=team2] unless entity @r[team=team3] run function teams:dorandomteams3
execute if score #pltf_NumTeams pltf_setting matches 4 unless entity @r[team=team1] unless entity @r[team=team2] unless entity @r[team=team3] unless entity @r[team=team4] run function teams:dorandomteams4

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
effect clear @a[scores={pltf_On=1}]
effect give @a[scores={pltf_On=1}] resistance 10 255
effect give @a[scores={pltf_On=1}] regeneration 10 10
effect give @a[scores={pltf_On=1}] saturation 10 10
effect give @a[scores={pltf_On=1}] slowness 3 10

# Inventory and gamemode
clear @a[scores={pltf_On=1}]
execute as @a[scores={pltf_On=1}] run function platforms:clearenderchest
gamemode survival @a[scores={pltf_On=1}]

# Game starts message
title @a[scores={pltf_On=1}] title {text:'Go!',color:gold}
tellraw @a[scores={pltf_On=1}] [{text:'Platforms: Bring ',color:gold},{score:{name:'#pltf_score_to_win',objective:pltf_setting},color:gold},{text:' diamonds to your base to win.',color:gold}]
tellraw @a[scores={pltf_On=1}] {text:'Platforms: Game starts now!',color:gold}


