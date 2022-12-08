# Permanent effects
effect give @a saturation 10

# Rng
scoreboard players set @a[scores={flsheep_rng=100..}] flsheep_rng 0

# Kill players who fell off the map
kill @a[x=-1000000,y=0,z=-1000000,dx=2000000,dy=149,dz=2000000,scores={flsheep_DeathCnt=0}]

# Delay respawn
scoreboard players set @a[scores={flsheep_DeathCnt=201..}] flsheep_DeathCnt 0
scoreboard players add @a[scores={ctime_Pause=0,flsheep_DeathCnt=1..}] flsheep_DeathCnt 1

# Handle dead players
gamemode spectator @a[scores={flsheep_DeathCnt=2}]
execute at @e[type=armor_stand,name=centre] run tp @a[scores={flsheep_DeathCnt=1..199}] ~ ~20 ~
title @a[scores={flsheep_DeathCnt=2}] title [{"text":"You died!","color":"red"}]
title @a[scores={flsheep_DeathCnt=2}] subtitle [{"text":"You will respawn in 10 seconds...","color":"red"}]
gamemode survival @a[scores={flsheep_DeathCnt=200}]

# Tp players who respawned back to team platform
execute at @e[type=armor_stand,name=team1] run tp @a[scores={flsheep_DeathCnt=200},team=team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run tp @a[scores={flsheep_DeathCnt=200},team=team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run tp @a[scores={flsheep_DeathCnt=200},team=team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run tp @a[scores={flsheep_DeathCnt=200},team=team4] ~ ~ ~

# Force players to wear team colors + elytra
execute as @a if entity @s[team=team1] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet{display:{color:65280},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:1s,id:"minecraft:binding_curse"}]}
execute as @a if entity @s[team=team2] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet{display:{color:16711680},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:1s,id:"minecraft:binding_curse"}]}
execute as @a if entity @s[team=team3] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet{display:{color:255},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:1s,id:"minecraft:binding_curse"}]}
execute as @a if entity @s[team=team4] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet{display:{color:16776960},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:1s,id:"minecraft:binding_curse"}]}
execute as @a unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run item replace entity @s armor.chest with elytra

# Kill sheep in team bases and increment score
execute at @e[type=armor_stand,name=team1] if entity @e[type=sheep,nbt={Color:0b},distance=..3] run scoreboard players add @r[team=team1] flsheep_AddScore 1
execute at @e[type=armor_stand,name=team2] if entity @e[type=sheep,nbt={Color:0b},distance=..3] run scoreboard players add @r[team=team2] flsheep_AddScore 1
execute at @e[type=armor_stand,name=team3] if entity @e[type=sheep,nbt={Color:0b},distance=..3] run scoreboard players add @r[team=team3] flsheep_AddScore 1
execute at @e[type=armor_stand,name=team4] if entity @e[type=sheep,nbt={Color:0b},distance=..3] run scoreboard players add @r[team=team4] flsheep_AddScore 1
execute at @e[type=armor_stand,name=team1] if entity @e[type=sheep,nbt={Color:6b},distance=..3] run scoreboard players add @r[team=team1] flsheep_AddScore 3
execute at @e[type=armor_stand,name=team2] if entity @e[type=sheep,nbt={Color:6b},distance=..3] run scoreboard players add @r[team=team2] flsheep_AddScore 3
execute at @e[type=armor_stand,name=team3] if entity @e[type=sheep,nbt={Color:6b},distance=..3] run scoreboard players add @r[team=team3] flsheep_AddScore 3
execute at @e[type=armor_stand,name=team4] if entity @e[type=sheep,nbt={Color:6b},distance=..3] run scoreboard players add @r[team=team4] flsheep_AddScore 3
execute as @a[scores={flsheep_AddScore=1..},team=team1] run scoreboard players add @a[team=team1] flsheep_Score 1
execute as @a[scores={flsheep_AddScore=1..},team=team2] run scoreboard players add @a[team=team2] flsheep_Score 1
execute as @a[scores={flsheep_AddScore=1..},team=team3] run scoreboard players add @a[team=team3] flsheep_Score 1
execute as @a[scores={flsheep_AddScore=1..},team=team4] run scoreboard players add @a[team=team4] flsheep_Score 1
execute as @a[scores={flsheep_AddScore=1..},team=team1] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={flsheep_AddScore=1..},team=team2] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={flsheep_AddScore=1..},team=team3] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={flsheep_AddScore=1..},team=team4] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute at @e[type=armor_stand,name=team1] run kill @e[type=sheep,distance=..3]
execute at @e[type=armor_stand,name=team2] run kill @e[type=sheep,distance=..3]
execute at @e[type=armor_stand,name=team3] run kill @e[type=sheep,distance=..3]
execute at @e[type=armor_stand,name=team4] run kill @e[type=sheep,distance=..3]
scoreboard players remove @a[scores={flsheep_AddScore=1..}] flsheep_AddScore 1

# Clear sheep loot from the map
kill @e[type=item,nbt={Item:{id:"minecraft:mutton"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:cooked_mutton"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lead"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:black_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:brown_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:cyan_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:gray_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:green_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:pink_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:purple_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:white_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_wool"}}]

# Fill team chests with leads and rockets
execute at @e[type=armor_stand,name=team1] run item replace block ~-2 ~ ~ container.0 with lead 8
execute at @e[type=armor_stand,name=team2] run item replace block ~2 ~ ~ container.0 with lead 8
execute at @e[type=armor_stand,name=team3] run item replace block ~ ~ ~-2 container.0 with lead 8
execute at @e[type=armor_stand,name=team4] run item replace block ~ ~ ~2 container.0 with lead 8
execute at @e[type=armor_stand,name=team1] run item replace block ~-2 ~ ~ container.1 with firework_rocket 8
execute at @e[type=armor_stand,name=team2] run item replace block ~2 ~ ~ container.1 with firework_rocket 8
execute at @e[type=armor_stand,name=team3] run item replace block ~ ~ ~-2 container.1 with firework_rocket 8
execute at @e[type=armor_stand,name=team4] run item replace block ~ ~ ~2 container.1 with firework_rocket 8

# Reset platforms
execute if entity @r[scores={flsheep_NumTeams=2}] at @e[type=armor_stand,name=centre] run function flsheep:buildcentre2
execute if entity @r[scores={flsheep_NumTeams=4}] at @e[type=armor_stand,name=centre] run function flsheep:buildcentre4
execute at @e[type=armor_stand,name=team1] run function flsheep:buildteam1
execute at @e[type=armor_stand,name=team2] run function flsheep:buildteam2
execute at @e[type=armor_stand,name=team3] run function flsheep:buildteam3
execute at @e[type=armor_stand,name=team4] run function flsheep:buildteam4

# Decrement time delays
scoreboard players remove @a[scores={ctime_Pause=0}] flsheep_Delay 1

# Spawn sheep in centre when delay completed
# 10 percent chance for all of the following events:
# 2 sheep, 1 pink sheep or a wolf
execute at @e[type=armor_stand,name=centre] if entity @r[scores={flsheep_rng=0..79}] if entity @a[scores={flsheep_Delay=..0}] run summon sheep ~ ~2 ~ {Color:0}
execute at @e[type=armor_stand,name=centre] if entity @r[scores={flsheep_rng=70..79}] if entity @a[scores={flsheep_Delay=..0}] run summon sheep ~ ~2 ~ {Color:0}
execute at @e[type=armor_stand,name=centre] if entity @r[scores={flsheep_rng=80..89}] if entity @a[scores={flsheep_Delay=..0}] run summon sheep ~ ~2 ~ {Color:6}
execute at @e[type=armor_stand,name=centre] if entity @r[scores={flsheep_rng=90..99}] if entity @a[scores={flsheep_Delay=..0}] run summon wolf ~ ~2 ~

# Reset delay for sheep spawning
execute if entity @r[scores={flsheep_NumTeams=2}] run scoreboard players set @a[scores={flsheep_Delay=..0}] flsheep_Delay 300
execute if entity @r[scores={flsheep_NumTeams=4}] run scoreboard players set @a[scores={flsheep_Delay=..0}] flsheep_Delay 150

# Detect end of the game
execute as @a[team=team1,scores={flsheep_Score=20..}] run function flsheep:win1
execute as @a[team=team2,scores={flsheep_Score=20..}] run function flsheep:win2
execute as @a[team=team3,scores={flsheep_Score=20..}] run function flsheep:win3
execute as @a[team=team4,scores={flsheep_Score=20..}] run function flsheep:win4

