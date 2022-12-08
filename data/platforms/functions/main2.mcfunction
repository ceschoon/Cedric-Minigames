# Permanent effects
effect give @a saturation 10

# Kill players who fell off the map
kill @a[x=-1000000,y=0,z=-1000000,dx=2000000,dy=149,dz=2000000,scores={pltf_DeathCount=0}]

# Delay respawn
scoreboard players set @a[scores={pltf_DeathCount=201..}] pltf_DeathCount 0
scoreboard players add @a[scores={ctime_Pause=0,pltf_DeathCount=1..}] pltf_DeathCount 1

# Handle dead players
gamemode spectator @a[scores={pltf_DeathCount=2}]
execute at @e[type=armor_stand,name=diamond] run tp @a[scores={pltf_DeathCount=1..199}] ~ ~20 ~
title @a[scores={pltf_DeathCount=2}] title [{"text":"You died!","color":"red"}]
title @a[scores={pltf_DeathCount=2}] subtitle [{"text":"You will respawn in 10 seconds...","color":"red"}]
gamemode survival @a[scores={pltf_DeathCount=200}]

# Tp players who respawned back to team platform
execute at @e[type=armor_stand,name=team1] run tp @a[scores={pltf_DeathCount=200},team=team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run tp @a[scores={pltf_DeathCount=200},team=team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run tp @a[scores={pltf_DeathCount=200},team=team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run tp @a[scores={pltf_DeathCount=200},team=team4] ~ ~ ~

# Force players to wear team colors (except if player invisible)
execute as @a unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] if entity @s[team=team1] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet{display:{color:65280},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:1s,id:"minecraft:binding_curse"}]}
execute as @a unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] if entity @s[team=team2] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet{display:{color:16711680},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:1s,id:"minecraft:binding_curse"}]}
execute as @a unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] if entity @s[team=team3] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet{display:{color:255},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:1s,id:"minecraft:binding_curse"}]}
execute as @a unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] if entity @s[team=team4] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet{display:{color:16776960},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:1s,id:"minecraft:binding_curse"}]}
execute as @a if entity @s[nbt={ActiveEffects:[{Id:14b}]}] run item replace entity @s armor.head with air

# Clear inventories from other team's wool color
clear @a[team=team2] lime_wool
clear @a[team=team3] lime_wool
clear @a[team=team4] lime_wool
clear @a[team=team1] red_wool
clear @a[team=team3] red_wool
clear @a[team=team4] red_wool
clear @a[team=team1] blue_wool
clear @a[team=team2] blue_wool
clear @a[team=team4] blue_wool
clear @a[team=team1] yellow_wool
clear @a[team=team2] yellow_wool
clear @a[team=team3] yellow_wool

# Clear inventories from other team's terracotta color
clear @a[team=team2] lime_terracotta
clear @a[team=team3] lime_terracotta
clear @a[team=team4] lime_terracotta
clear @a[team=team1] red_terracotta
clear @a[team=team3] red_terracotta
clear @a[team=team4] red_terracotta
clear @a[team=team1] blue_terracotta
clear @a[team=team2] blue_terracotta
clear @a[team=team4] blue_terracotta
clear @a[team=team1] yellow_terracotta
clear @a[team=team2] yellow_terracotta
clear @a[team=team3] yellow_terracotta

# Convert freshly bought terracotta to player's team color
execute as @a run function platforms:terracottacolor

# Clear diamonds from inventory and increment score
scoreboard players set @a pltf_AddScore 0
execute at @e[type=armor_stand,name=team1] as @a[team=team1,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute at @e[type=armor_stand,name=team2] as @a[team=team2,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute at @e[type=armor_stand,name=team3] as @a[team=team3,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute at @e[type=armor_stand,name=team4] as @a[team=team4,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute as @a[scores={pltf_AddScore=1},team=team1] run scoreboard players add @a[team=team1] pltf_Score 1
execute as @a[scores={pltf_AddScore=1},team=team2] run scoreboard players add @a[team=team2] pltf_Score 1
execute as @a[scores={pltf_AddScore=1},team=team3] run scoreboard players add @a[team=team3] pltf_Score 1
execute as @a[scores={pltf_AddScore=1},team=team4] run scoreboard players add @a[team=team4] pltf_Score 1
execute as @a[scores={pltf_AddScore=1},team=team1] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={pltf_AddScore=1},team=team2] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={pltf_AddScore=1},team=team3] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={pltf_AddScore=1},team=team4] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

# Reset platforms
execute at @e[type=armor_stand,name=diamond] run function platforms:builddiamond
execute at @e[type=armor_stand,name=emerald1] run function platforms:buildemerald
execute at @e[type=armor_stand,name=emerald2] run function platforms:buildemerald
execute at @e[type=armor_stand,name=villager1] run function platforms:buildvillager
execute at @e[type=armor_stand,name=villager2] run function platforms:buildvillager
execute at @e[type=armor_stand,name=cannon1] run function platforms:buildmagma
execute at @e[type=armor_stand,name=cannon2] run function platforms:buildmagma
execute at @e[type=armor_stand,name=team1] run function platforms:buildteam1
execute at @e[type=armor_stand,name=team2] run function platforms:buildteam2
execute at @e[type=armor_stand,name=team3] run function platforms:buildteam3
execute at @e[type=armor_stand,name=team4] run function platforms:buildteam4

# Remove all diamonds/emerald blocks near corresponding platforms
# Otherwise players can just farm these resources using tnt/fireballs
execute at @e[type=armor_stand,name=diamond] run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_block"}},distance=..10]
execute at @e[type=armor_stand,name=emerald1] run kill @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..10]
execute at @e[type=armor_stand,name=emerald2] run kill @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..10]

# Decrement time delays for generators
scoreboard players remove @a[scores={ctime_Pause=0}] pltf_DelayEmrld 1
scoreboard players remove @a[scores={ctime_Pause=0}] pltf_DelayDiamd 1
scoreboard players remove @a[scores={ctime_Pause=0}] pltf_DelayWool 1

# Spawn loot at armor stand when delay completed
execute at @e[type=armor_stand,name=diamond] if entity @a[scores={pltf_DelayDiamd=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/diamond_ore
execute at @e[type=armor_stand,name=emerald1] if entity @a[scores={pltf_DelayEmrld=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/emerald_ore
execute at @e[type=armor_stand,name=emerald2] if entity @a[scores={pltf_DelayEmrld=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/emerald_ore
execute at @e[type=armor_stand,name=team1] if entity @a[scores={pltf_DelayWool=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/lime_wool
execute at @e[type=armor_stand,name=team2] if entity @a[scores={pltf_DelayWool=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/red_wool
execute at @e[type=armor_stand,name=team3] if entity @a[scores={pltf_DelayWool=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/blue_wool
execute at @e[type=armor_stand,name=team4] if entity @a[scores={pltf_DelayWool=..0}] run loot spawn ~ ~ ~ loot minecraft:blocks/yellow_wool

# Reset delay
scoreboard players set @a[scores={pltf_DelayEmrld=..0}] pltf_DelayEmrld 100
scoreboard players set @a[scores={pltf_DelayDiamd=..0}] pltf_DelayDiamd 600
scoreboard players set @a[scores={pltf_DelayWool=..0}] pltf_DelayWool 30

# Keep villagers in place
execute at @e[type=armor_stand,name=villager1] run tp @e[type=villager,distance=..5] ~ ~ ~
execute at @e[type=armor_stand,name=villager2] run tp @e[type=villager,distance=..5] ~ ~ ~

# Summon fireballs from fire_charge
#function platforms:summonfireball

# Delay for cannons
scoreboard players remove @a[scores={ctime_Pause=0}] pltf_DelayFire1 1
scoreboard players remove @a[scores={ctime_Pause=0}] pltf_DelayFire2 1
execute if entity @a[scores={pltf_CountFire1=3..,pltf_DelayFire1=..0}] run scoreboard players set @a pltf_DelayFire1 2400
execute if entity @a[scores={pltf_CountFire2=3..,pltf_DelayFire2=..0}] run scoreboard players set @a pltf_DelayFire2 2400
execute if entity @a[scores={pltf_CountFire1=3..}] run scoreboard players set @a pltf_CountFire1 0
execute if entity @a[scores={pltf_CountFire2=3..}] run scoreboard players set @a pltf_CountFire2 0

# Summon fireball in cannon1
scoreboard players set @a pltf_SummonFire 0
execute at @e[type=armor_stand,name=cannon1] if entity @a[scores={pltf_DelayFire1=..0}] unless entity @e[type=fireball,distance=..2] run scoreboard players set @a pltf_SummonFire 1
execute at @e[type=armor_stand,name=cannon1] if entity @a[scores={pltf_SummonFire=1}] run summon fireball ~ ~1 ~ {ExplosionPower:3}
execute at @e[type=armor_stand,name=cannon1] if entity @a[scores={pltf_SummonFire=1}] run scoreboard players add @a pltf_CountFire1 1

# Summon fireball in cannon2
scoreboard players set @a pltf_SummonFire 0
execute at @e[type=armor_stand,name=cannon2] if entity @a[scores={pltf_DelayFire2=..0}] unless entity @e[type=fireball,distance=..2] run scoreboard players set @a pltf_SummonFire 1
execute at @e[type=armor_stand,name=cannon2] if entity @a[scores={pltf_SummonFire=1}] run summon fireball ~ ~1 ~ {ExplosionPower:3}
execute at @e[type=armor_stand,name=cannon2] if entity @a[scores={pltf_SummonFire=1}] run scoreboard players add @a pltf_CountFire2 1

# Enforce no fireball rule if activated
execute if entity @a[scores={pltf_nofireballs=1}] run kill @e[type=fireball]

# Freeze and make players invincible during pauses
effect give @a[scores={ctime_Pause=1}] slowness 1 255
effect give @a[scores={ctime_Pause=1}] mining_fatigue 1 255
effect give @a[scores={ctime_Pause=1}] resistance 1 255


# detect end of the game
execute as @a[team=team1,scores={pltf_Score=20..}] run function platforms:win1
execute as @a[team=team2,scores={pltf_Score=20..}] run function platforms:win2
execute as @a[team=team3,scores={pltf_Score=20..}] run function platforms:win3
execute as @a[team=team4,scores={pltf_Score=20..}] run function platforms:win4

