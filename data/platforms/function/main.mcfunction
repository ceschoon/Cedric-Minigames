# Permanent effects
effect give @a[scores={pltf_On=1}] saturation 10

# Effects nerfing the special anti-fall boots
## Note: The weakness effect prevents anti-fall players from using the knockback stick and defend with punches
execute as @a[scores={pltf_On=1}] if items entity @s armor.feet golden_boots[minecraft:lore=[{italic:false,text:'Safety Boots'}]] run effect give @s weakness 10 0

# Safety net using special anti-fall boots
execute at @e[type=armor_stand,name=team1] as @a[scores={pltf_On=1},team=team1,x=-1000000,y=179,z=-1000000,dx=2000000,dy=10,dz=2000000] if items entity @s armor.feet golden_boots[minecraft:lore=[{italic:false,text:'Safety Boots'}]] run tp @s ~ ~ ~
execute at @e[type=armor_stand,name=team2] as @a[scores={pltf_On=1},team=team2,x=-1000000,y=179,z=-1000000,dx=2000000,dy=10,dz=2000000] if items entity @s armor.feet golden_boots[minecraft:lore=[{italic:false,text:'Safety Boots'}]] run tp @s ~ ~ ~
execute at @e[type=armor_stand,name=team3] as @a[scores={pltf_On=1},team=team3,x=-1000000,y=179,z=-1000000,dx=2000000,dy=10,dz=2000000] if items entity @s armor.feet golden_boots[minecraft:lore=[{italic:false,text:'Safety Boots'}]] run tp @s ~ ~ ~
execute at @e[type=armor_stand,name=team4] as @a[scores={pltf_On=1},team=team4,x=-1000000,y=179,z=-1000000,dx=2000000,dy=10,dz=2000000] if items entity @s armor.feet golden_boots[minecraft:lore=[{italic:false,text:'Safety Boots'}]] run tp @s ~ ~ ~

# Kill players who fell off the map (and enderpearls)
kill @a[x=-1000000,y=0,z=-1000000,dx=2000000,dy=179,dz=2000000,scores={pltf_On=1,pltf_DeathCount=0}]
kill @e[x=-1000000,y=0,z=-1000000,dx=2000000,dy=179,dz=2000000,type=ender_pearl]

# Delay respawn
scoreboard players set @a[scores={pltf_On=1,pltf_DeathCount=201..}] pltf_DeathCount 0
execute if score #ctime_Pause ctime_variable matches 0 run scoreboard players add @a[scores={pltf_On=1,pltf_DeathCount=1..}] pltf_DeathCount 1

# Handle dead players
gamemode spectator @a[scores={pltf_On=1,pltf_DeathCount=2}]
execute at @e[type=armor_stand,name=diamond] run tp @a[scores={pltf_On=1,pltf_DeathCount=1..199}] ~ ~20 ~
title @a[scores={pltf_On=1,pltf_DeathCount=2}] title [{text:'You died!',color:red}]
title @a[scores={pltf_On=1,pltf_DeathCount=2}] subtitle [{text:'You will respawn in 10 seconds...',color:red}]
gamemode survival @a[scores={pltf_On=1,pltf_DeathCount=200}]

# Tp players who respawned back to team platform
execute at @e[type=armor_stand,name=team1] run tp @a[scores={pltf_On=1,pltf_DeathCount=200},team=team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run tp @a[scores={pltf_On=1,pltf_DeathCount=200},team=team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run tp @a[scores={pltf_On=1,pltf_DeathCount=200},team=team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run tp @a[scores={pltf_On=1,pltf_DeathCount=200},team=team4] ~ ~ ~

# Force players to wear team colors (except if player invisible)
execute as @a[scores={pltf_On=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if entity @s[team=team1] unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s armor.head with leather_helmet[dyed_color=65280,enchantments={"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}]
execute as @a[scores={pltf_On=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if entity @s[team=team2] unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s armor.head with leather_helmet[dyed_color=16711680,enchantments={"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}]
execute as @a[scores={pltf_On=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if entity @s[team=team3] unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s armor.head with leather_helmet[dyed_color=255,enchantments={"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}]
execute as @a[scores={pltf_On=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if entity @s[team=team4] unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s armor.head with leather_helmet[dyed_color=16776960,enchantments={"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}]
execute as @a[scores={pltf_On=1}] if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with air

# Clear inventories from other team's wool color
clear @a[scores={pltf_On=1},team=team2] lime_wool
clear @a[scores={pltf_On=1},team=team3] lime_wool
clear @a[scores={pltf_On=1},team=team4] lime_wool
clear @a[scores={pltf_On=1},team=team1] red_wool
clear @a[scores={pltf_On=1},team=team3] red_wool
clear @a[scores={pltf_On=1},team=team4] red_wool
clear @a[scores={pltf_On=1},team=team1] blue_wool
clear @a[scores={pltf_On=1},team=team2] blue_wool
clear @a[scores={pltf_On=1},team=team4] blue_wool
clear @a[scores={pltf_On=1},team=team1] yellow_wool
clear @a[scores={pltf_On=1},team=team2] yellow_wool
clear @a[scores={pltf_On=1},team=team3] yellow_wool

# Clear inventories from other team's terracotta color
clear @a[scores={pltf_On=1},team=team2] lime_terracotta
clear @a[scores={pltf_On=1},team=team3] lime_terracotta
clear @a[scores={pltf_On=1},team=team4] lime_terracotta
clear @a[scores={pltf_On=1},team=team1] red_terracotta
clear @a[scores={pltf_On=1},team=team3] red_terracotta
clear @a[scores={pltf_On=1},team=team4] red_terracotta
clear @a[scores={pltf_On=1},team=team1] blue_terracotta
clear @a[scores={pltf_On=1},team=team2] blue_terracotta
clear @a[scores={pltf_On=1},team=team4] blue_terracotta
clear @a[scores={pltf_On=1},team=team1] yellow_terracotta
clear @a[scores={pltf_On=1},team=team2] yellow_terracotta
clear @a[scores={pltf_On=1},team=team3] yellow_terracotta

# Convert freshly bought terracotta to player's team color
execute as @a[scores={pltf_On=1}] run function platforms:terracottacolor

# Convert mob spawn eggs to spawn mob in correct team
execute as @a[scores={pltf_On=1}] run function platforms:makespawneggofteam

# Clear inventories from empty glass bottles
clear @a[scores={pltf_On=1}] glass_bottle

# Clear diamonds from inventory and increment score
scoreboard players set @a pltf_AddScore 0
execute at @e[type=armor_stand,name=team1] as @a[scores={pltf_On=1},team=team1,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute at @e[type=armor_stand,name=team2] as @a[scores={pltf_On=1},team=team2,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute at @e[type=armor_stand,name=team3] as @a[scores={pltf_On=1},team=team3,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute at @e[type=armor_stand,name=team4] as @a[scores={pltf_On=1},team=team4,distance=..2] store success score @s pltf_AddScore run clear @s diamond 1
execute as @a[scores={pltf_On=1,pltf_AddScore=1},team=team1] run scoreboard players add @a[team=team1] pltf_Score 1
execute as @a[scores={pltf_On=1,pltf_AddScore=1},team=team2] run scoreboard players add @a[team=team2] pltf_Score 1
execute as @a[scores={pltf_On=1,pltf_AddScore=1},team=team3] run scoreboard players add @a[team=team3] pltf_Score 1
execute as @a[scores={pltf_On=1,pltf_AddScore=1},team=team4] run scoreboard players add @a[team=team4] pltf_Score 1
execute as @a[scores={pltf_On=1,pltf_AddScore=1},team=team1] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={pltf_On=1,pltf_AddScore=1},team=team2] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={pltf_On=1,pltf_AddScore=1},team=team3] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute as @a[scores={pltf_On=1,pltf_AddScore=1},team=team4] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

# Auto-ignite TNT (before resetting platforms, so tnt can be placed on them)
execute as @a at @s run function platforms:autoignitetnt

# Reset platforms
execute at @e[type=armor_stand,name=diamond] run function platforms:builddiamond
execute at @e[type=armor_stand,name=emerald1] run function platforms:buildemerald
execute at @e[type=armor_stand,name=emerald2] run function platforms:buildemerald
execute at @e[type=armor_stand,name=emerald3] run function platforms:buildemerald
execute at @e[type=armor_stand,name=emerald4] run function platforms:buildemerald
execute at @e[type=armor_stand,name=villager1] run function platforms:buildvillager
execute at @e[type=armor_stand,name=villager2] run function platforms:buildvillager
execute at @e[type=armor_stand,name=villager3] run function platforms:buildvillager
execute at @e[type=armor_stand,name=villager4] run function platforms:buildvillager
execute at @e[type=armor_stand,name=cannon1] run function platforms:buildmagma
execute at @e[type=armor_stand,name=cannon2] run function platforms:buildmagma
execute at @e[type=armor_stand,name=cannon3] run function platforms:buildmagma
execute at @e[type=armor_stand,name=team1] run function platforms:buildteam1
execute at @e[type=armor_stand,name=team2] run function platforms:buildteam2
execute at @e[type=armor_stand,name=team3] run function platforms:buildteam3
execute at @e[type=armor_stand,name=team4] run function platforms:buildteam4

# Remove all diamonds/emerald blocks near corresponding platforms
# Otherwise players can just farm these resources using tnt/fireballs
execute at @e[type=armor_stand,name=diamond] run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_block"}},distance=..10]
execute at @e[type=armor_stand,name=emerald1] run kill @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..10]
execute at @e[type=armor_stand,name=emerald2] run kill @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..10]
execute at @e[type=armor_stand,name=emerald3] run kill @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..10]
execute at @e[type=armor_stand,name=emerald4] run kill @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}},distance=..10]

# Remove wind charges near fireball cannon to prevent staked middle camper from getting rid of them remotely
#execute at @e[type=armor_stand,name=cannon1] run kill @e[type=wind_charge,distance=..5]
#execute at @e[type=armor_stand,name=cannon2] run kill @e[type=wind_charge,distance=..5]
#execute at @e[type=armor_stand,name=cannon3] run kill @e[type=wind_charge,distance=..5]

# Decrement time delays
execute if score #ctime_Pause ctime_variable matches 0 run scoreboard players remove #pltf_DelayEmrld pltf_variable 1
execute if score #ctime_Pause ctime_variable matches 0 run scoreboard players remove #pltf_DelayDiamd pltf_variable 1
execute if score #ctime_Pause ctime_variable matches 0 run scoreboard players remove #pltf_DelayWool pltf_variable 1
execute if score #ctime_Pause ctime_variable matches 0 run scoreboard players remove @a pltf_DelayBlind 1
execute if score #ctime_Pause ctime_variable matches 0 run scoreboard players remove @a pltf_DelayCage 1

# Spawn loot at armor stand when delay completed
execute at @e[type=armor_stand,name=diamond] if score #pltf_DelayDiamd pltf_variable matches ..0 run loot spawn ~ ~ ~ loot minecraft:blocks/diamond_ore
execute at @e[type=armor_stand,name=emerald1] if score #pltf_DelayEmrld pltf_variable matches ..0 run loot spawn ~ ~ ~ loot minecraft:blocks/emerald_ore
execute at @e[type=armor_stand,name=emerald2] if score #pltf_DelayEmrld pltf_variable matches ..0 run loot spawn ~ ~ ~ loot minecraft:blocks/emerald_ore
execute at @e[type=armor_stand,name=emerald3] if score #pltf_DelayEmrld pltf_variable matches ..0 run loot spawn ~ ~ ~ loot minecraft:blocks/emerald_ore
execute at @e[type=armor_stand,name=emerald4] if score #pltf_DelayEmrld pltf_variable matches ..0 run loot spawn ~ ~ ~ loot minecraft:blocks/emerald_ore
execute at @e[type=armor_stand,name=team1] if score #pltf_DelayWool pltf_variable matches ..0 run loot spawn ~ ~ ~ loot minecraft:blocks/lime_wool
execute at @e[type=armor_stand,name=team2] if score #pltf_DelayWool pltf_variable matches ..0 run loot spawn ~ ~ ~ loot minecraft:blocks/red_wool
execute at @e[type=armor_stand,name=team3] if score #pltf_DelayWool pltf_variable matches ..0 run loot spawn ~ ~ ~ loot minecraft:blocks/blue_wool
execute at @e[type=armor_stand,name=team4] if score #pltf_DelayWool pltf_variable matches ..0 run loot spawn ~ ~ ~ loot minecraft:blocks/yellow_wool

# Reset delay
execute if score #pltf_DelayEmrld pltf_variable matches ..0 store result score #pltf_DelayEmrld pltf_variable run scoreboard players get #pltf_delay_emerald pltf_setting
execute if score #pltf_DelayDiamd pltf_variable matches ..0 store result score #pltf_DelayDiamd pltf_variable run scoreboard players get #pltf_delay_diamond pltf_setting
execute if score #pltf_DelayWool pltf_variable matches ..0 store result score #pltf_DelayWool pltf_variable run scoreboard players get #pltf_delay_wool pltf_setting

# Keep villagers in place --> it appears that after version 1.21.4,
# teleporting the villager closes the interaction gui. Therefore, I
# I now set NOAI=1 and reserve an emergency tp beyond a certain distance.
execute at @e[type=armor_stand,name=villager1] run tp @e[type=villager,distance=4..9] ~ ~ ~
execute at @e[type=armor_stand,name=villager2] run tp @e[type=villager,distance=4..9] ~ ~ ~
execute at @e[type=armor_stand,name=villager3] run tp @e[type=villager,distance=4..9] ~ ~ ~

# Replace witches by villager
execute as @e[type=witch] at @s run function platforms:summonvillager
execute as @e[type=witch] run kill @s

# Keep golems in place
execute at @e[type=armor_stand,name=team1] run tp @e[type=iron_golem,distance=8..10] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run tp @e[type=iron_golem,distance=8..10] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run tp @e[type=iron_golem,distance=8..10] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run tp @e[type=iron_golem,distance=8..10] ~ ~ ~

# Keep vex in place --> messes up with their aggro or pathfinding ??
#execute at @e[type=armor_stand,name=diamond] run tp @e[type=vex,distance=20..25] ~ ~8 ~

# Make golems join the team of the platform where they spawn
execute at @e[type=armor_stand,name=team1] as @e[type=iron_golem,distance=..10,limit=1,sort=random] run team join team1
execute at @e[type=armor_stand,name=team2] as @e[type=iron_golem,distance=..10,limit=1,sort=random] run team join team2
execute at @e[type=armor_stand,name=team3] as @e[type=iron_golem,distance=..10,limit=1,sort=random] run team join team3
execute at @e[type=armor_stand,name=team4] as @e[type=iron_golem,distance=..10,limit=1,sort=random] run team join team4

# Make golems angry at members of enemy teams
execute as @e[type=iron_golem,team=team1,limit=1,sort=random] at @s run data modify entity @s angry_at set from entity @p[scores={pltf_On=1},team=!team1,distance=..24] UUID
execute as @e[type=iron_golem,team=team2,limit=1,sort=random] at @s run data modify entity @s angry_at set from entity @p[scores={pltf_On=1},team=!team2,distance=..24] UUID
execute as @e[type=iron_golem,team=team3,limit=1,sort=random] at @s run data modify entity @s angry_at set from entity @p[scores={pltf_On=1},team=!team3,distance=..24] UUID
execute as @e[type=iron_golem,team=team4,limit=1,sort=random] at @s run data modify entity @s angry_at set from entity @p[scores={pltf_On=1},team=!team4,distance=..24] UUID

# Make golems glow to show team colors
effect give @e[type=iron_golem,team=team1] glowing 1 1 true
effect give @e[type=iron_golem,team=team2] glowing 1 1 true
effect give @e[type=iron_golem,team=team3] glowing 1 1 true
effect give @e[type=iron_golem,team=team4] glowing 1 1 true

# Make vex angry at enemy players
execute as @e[type=vex,team=team1,limit=1,sort=random] at @e[type=armor_stand,name=diamond] run data modify entity @s angry_at set from entity @p[scores={pltf_On=1},team=!team1] UUID
execute as @e[type=vex,team=team2,limit=1,sort=random] at @e[type=armor_stand,name=diamond] run data modify entity @s angry_at set from entity @p[scores={pltf_On=1},team=!team2] UUID
execute as @e[type=vex,team=team3,limit=1,sort=random] at @e[type=armor_stand,name=diamond] run data modify entity @s angry_at set from entity @p[scores={pltf_On=1},team=!team3] UUID
execute as @e[type=vex,team=team4,limit=1,sort=random] at @e[type=armor_stand,name=diamond] run data modify entity @s angry_at set from entity @p[scores={pltf_On=1},team=!team4] UUID

# Make vex glow to show team colors
effect give @e[type=vex,team=team1] glowing 1 1 true
effect give @e[type=vex,team=team2] glowing 1 1 true
effect give @e[type=vex,team=team3] glowing 1 1 true
effect give @e[type=vex,team=team4] glowing 1 1 true

# Kill shulkers close to spawn platforms
execute at @e[type=armor_stand,name=team1] as @e[type=shulker,distance=..16] at @s run say "One cannot place a shulker within 16 blocks of a spawn platform!" 
execute at @e[type=armor_stand,name=team2] as @e[type=shulker,distance=..16] at @s run say "One cannot place a shulker within 16 blocks of a spawn platform!" 
execute at @e[type=armor_stand,name=team3] as @e[type=shulker,distance=..16] at @s run say "One cannot place a shulker within 16 blocks of a spawn platform!" 
execute at @e[type=armor_stand,name=team4] as @e[type=shulker,distance=..16] at @s run say "One cannot place a shulker within 16 blocks of a spawn platform!" 
execute at @e[type=armor_stand,name=team1] as @e[type=shulker,distance=..16] at @s run kill @s
execute at @e[type=armor_stand,name=team2] as @e[type=shulker,distance=..16] at @s run kill @s
execute at @e[type=armor_stand,name=team3] as @e[type=shulker,distance=..16] at @s run kill @s
execute at @e[type=armor_stand,name=team4] as @e[type=shulker,distance=..16] at @s run kill @s

# Make shulkers glow to show team colors
effect give @e[type=shulker,team=team1] glowing 1 1 true
effect give @e[type=shulker,team=team2] glowing 1 1 true
effect give @e[type=shulker,team=team3] glowing 1 1 true
effect give @e[type=shulker,team=team4] glowing 1 1 true

# Nerf some mobs a bit
execute as @e[type=vex] run item replace entity @s weapon.mainhand with minecraft:egg
execute as @e[type=vex] run attribute @s minecraft:follow_range base set 100
execute as @e[type=vex] run attribute @s minecraft:max_health base set 4
execute as @e[type=silverfish] run attribute @s minecraft:max_health base set 2

# Summon silverfish on players targeted by snowball
execute as @a[scores={pltf_On=1}] at @s unless items entity @s weapon.mainhand minecraft:snowball if entity @e[type=snowball,distance=..3] run summon silverfish ~ ~ ~
execute as @a[scores={pltf_On=1}] at @s unless items entity @s weapon.mainhand minecraft:snowball if entity @e[type=snowball,distance=..3] run summon silverfish ~ ~ ~
execute as @a[scores={pltf_On=1}] at @s unless items entity @s weapon.mainhand minecraft:snowball if entity @e[type=snowball,distance=..3] run kill @e[type=snowball,distance=..3]

# Summon fireballs from fire_charge
#function platforms:summonfireball

# Delay for cannons
execute if score #ctime_Pause ctime_variable matches 0 run scoreboard players remove #pltf_DelayFire1 pltf_variable 1
execute if score #ctime_Pause ctime_variable matches 0 run scoreboard players remove #pltf_DelayFire2 pltf_variable 1
execute if score #ctime_Pause ctime_variable matches 0 run scoreboard players remove #pltf_DelayFire3 pltf_variable 1
execute if score #pltf_CountFire1 pltf_variable matches 3.. if score #pltf_DelayFire1 pltf_variable matches ..0 run scoreboard players set #pltf_DelayFire1 pltf_variable 2400
execute if score #pltf_CountFire2 pltf_variable matches 3.. if score #pltf_DelayFire2 pltf_variable matches ..0 run scoreboard players set #pltf_DelayFire2 pltf_variable 2400
execute if score #pltf_CountFire3 pltf_variable matches 3.. if score #pltf_DelayFire3 pltf_variable matches ..0 run scoreboard players set #pltf_DelayFire3 pltf_variable 2400
execute if score #pltf_CountFire1 pltf_variable matches 3.. run scoreboard players set #pltf_CountFire1 pltf_variable 0
execute if score #pltf_CountFire2 pltf_variable matches 3.. run scoreboard players set #pltf_CountFire2 pltf_variable 0
execute if score #pltf_CountFire3 pltf_variable matches 3.. run scoreboard players set #pltf_CountFire3 pltf_variable 0

# Summon fireball in cannon1
scoreboard players set #pltf_SummonFire pltf_variable 0
execute at @e[type=armor_stand,name=cannon1] if score #pltf_DelayFire1 pltf_variable matches ..0 unless entity @e[type=fireball,distance=..2] run scoreboard players set #pltf_SummonFire pltf_variable 1
execute at @e[type=armor_stand,name=cannon1] if score #pltf_SummonFire pltf_variable matches 1 run summon fireball ~ ~1 ~ {ExplosionPower:3}
execute at @e[type=armor_stand,name=cannon1] if score #pltf_SummonFire pltf_variable matches 1 run scoreboard players add #pltf_CountFire1 pltf_variable 1

# Summon fireball in cannon2
scoreboard players set #pltf_SummonFire pltf_variable 0
execute at @e[type=armor_stand,name=cannon2] if score #pltf_DelayFire2 pltf_variable matches ..0 unless entity @e[type=fireball,distance=..2] run scoreboard players set #pltf_SummonFire pltf_variable 1
execute at @e[type=armor_stand,name=cannon2] if score #pltf_SummonFire pltf_variable matches 1 run summon fireball ~ ~1 ~ {ExplosionPower:3}
execute at @e[type=armor_stand,name=cannon2] if score #pltf_SummonFire pltf_variable matches 1 run scoreboard players add #pltf_CountFire2 pltf_variable 1

# Summon fireball in cannon3
scoreboard players set #pltf_SummonFire pltf_variable 0
execute at @e[type=armor_stand,name=cannon3] if score #pltf_DelayFire3 pltf_variable matches ..0 unless entity @e[type=fireball,distance=..2] run scoreboard players set #pltf_SummonFire pltf_variable 1
execute at @e[type=armor_stand,name=cannon3] if score #pltf_SummonFire pltf_variable matches 1 run summon fireball ~ ~1 ~ {ExplosionPower:3}
execute at @e[type=armor_stand,name=cannon3] if score #pltf_SummonFire pltf_variable matches 1 run scoreboard players add #pltf_CountFire3 pltf_variable 1

# Cage mechanics
function platforms:cagemechanics

# Blindness from ink sacs
function platforms:inkmechanics

# Trident mechanics
execute if items entity @a[scores={pltf_On=1}] weapon.mainhand minecraft:trident run weather thunder 300

# Enforce no fireball rule if activated
execute if score #pltf_nofireballs pltf_setting matches 1 run kill @e[type=fireball]

# Freeze and make players invincible during pauses
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={pltf_On=1}] slowness 1 255
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={pltf_On=1}] mining_fatigue 1 255
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={pltf_On=1}] resistance 1 255

# detect end of the game
execute as @a[team=team1,scores={pltf_On=1}] if score @s pltf_Score >= #pltf_score_to_win pltf_setting run function platforms:win1
execute as @a[team=team2,scores={pltf_On=1}] if score @s pltf_Score >= #pltf_score_to_win pltf_setting run function platforms:win2
execute as @a[team=team3,scores={pltf_On=1}] if score @s pltf_Score >= #pltf_score_to_win pltf_setting run function platforms:win3
execute as @a[team=team4,scores={pltf_On=1}] if score @s pltf_Score >= #pltf_score_to_win pltf_setting run function platforms:win4

# For compatibility with the Herobrine datapack
execute at @e[type=armor_stand,name=diamond] run scoreboard players set @a cfp_herobrine_target_override 0
execute at @e[type=armor_stand,name=diamond] run scoreboard players set @p[scores={pltf_On=1}] cfp_herobrine_target_override 1

