
# effect glowing to all sane players (and infected once shrine is active)
effect give @a[team=sane] glowing 10
effect give @a[scores={shrine_active=1},team=infected] glowing 10

# give food as reward for kills
give @a[scores={inf_On=1,inf_Kills=1..}] cooked_beef 3
scoreboard players remove @a[scores={inf_On=1,inf_Kills=1..}] inf_Kills 1

# tell sane players when an infected is nearby + play sound
execute at @a[team=infected,scores={ctime_TicksInSec=0}] run playsound minecraft:entity.warden.heartbeat ambient @a[team=sane] ~ ~ ~ 2
execute at @a[team=infected,scores={ctime_TicksInSec=7}] run playsound minecraft:entity.warden.heartbeat ambient @a[team=sane] ~ ~ ~ 2
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run tellraw @s [{"text":"An infected player is nearby...","color":"red"}]
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run scoreboard players set @s inf_WarnDelay 0

# infect sane players who just died
###clear @a[scores={ctime_DeathCount=5,inf_Mole=0},team=sane]
execute if entity @a[scores={ctime_DeathCount=5},team=sane] as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
execute if entity @a[scores={ctime_DeathCount=5},team=sane] run title @a[team=sane] actionbar [{"text":"One of you lost his life... but will come back soon.","color":"red"}]
team join infected @a[scores={ctime_DeathCount=5},team=sane]

# force players to wear a golden helmet in the nether
execute as @a at @s if dimension minecraft:the_nether run item replace entity @s armor.head with golden_helmet{Enchantments:[{id:binding_curse,lvl:1}]}

# mole reveal
scoreboard objectives remove inf_test_mole
scoreboard objectives add inf_test_mole dummy
scoreboard players set @a inf_test_mole 0
execute as @a[team=sane,scores={inf_Mole=1}] unless entity @s[nbt={Inventory:[{id: "minecraft:black_banner", Count:1b}]}] run scoreboard players set @s inf_test_mole 1
team join infected @a[scores={inf_test_mole=1}]
scoreboard players set @a[scores={inf_test_mole=1}] inf_Mole 0
effect give @a[scores={inf_test_mole=1}] minecraft:absorption infinite 1 false
execute as @a[scores={inf_test_mole=1}] run tellraw @a [{"selector":"@s","color":"red"},{"text":" was a mole the whole time!!","color":"red"}]
execute as @a[scores={inf_test_mole=1}] at @s run playsound minecraft:entity.ghast.hurt master @s ~ ~ ~

# increment time
scoreboard players add @a[scores={ctime_TicksInSec=0}] inf_WarnDelay 1

# make players invincible during pauses
effect give @a[scores={ctime_Pause=1}] resistance 1 255
effect give @a[scores={ctime_Pause=1}] slowness 1 255
effect give @a[scores={ctime_Pause=1}] invisibility 1

# detect end of the game
execute unless entity @a[team=sane] run function infection:win_infected
execute unless entity @a[team=infected] unless entity @a[scores={inf_Mole=1}] run function infection:win_sane
execute unless entity @a[team=infected] if entity @a[scores={shrine_active=1}] run function infection:win_sane

# make it so that sane players get bonuses when grouped together
function infection:bonus_effects

# shrine mechanics
function infection:shrine_mechanics

# shrine effects
execute at @e[type=armor_stand,name=shrine] run effect give @a[team=sane,distance=..8,scores={shrine_active=0}] minecraft:weakness 5 0 false
execute at @e[type=armor_stand,name=shrine] run effect give @a[team=infected,distance=..8,scores={shrine_active=1}] minecraft:weakness 5 0 false
execute at @e[type=armor_stand,name=shrine] run effect give @a[team=sane,distance=..8] minecraft:haste 5 4 false
execute at @e[type=armor_stand,name=shrine] run effect give @a[team=infected,distance=..8] minecraft:mining_fatigue 5 2 false
execute as @r[scores={ctime_TicksInSec=15,shrine_active=0}] at @e[type=armor_stand,name=shrine] run summon area_effect_cloud ~ ~ ~ {Particle:flame,Potion:harming,Radius:2.5,RadiusPerTick:-0.0,Duration:10}
#execute if entity @a[scores={shrine_active=0}] run weather rain 1d
execute if entity @a[scores={shrine_active=1}] run weather clear 1d

# shrine item generator
execute as @r[scores={ctime_TicksInSec=0,shrine_active=1}] at @e[type=armor_stand,name=shrine] run summon item ~ ~1 ~ {Item:{id:"splash_potion",Count:1,tag:{Potion:"luck"}}}
execute as @r[scores={ctime_TicksInSec=10,shrine_active=1}] at @e[type=armor_stand,name=shrine] run kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}},distance=..2]

# convert infected back to sane team using luck potions/effect
execute as @a[scores={ctime_TicksInSec=0}] unless entity @s[team=infected,nbt={ActiveEffects:[{Id:26}]}] run scoreboard players add @s inf_HealDelay 1
execute as @a[scores={ctime_TicksInSec=0}] if entity @s[team=infected,nbt={ActiveEffects:[{Id:26}]}] run scoreboard players remove @s inf_HealDelay 1
scoreboard players set @a[scores={inf_HealDelay=31..}] inf_HealDelay 31
team join sane @a[team=infected,scores={inf_HealDelay=..-1}]
effect give @a[team=infected,scores={ctime_TicksInSec=0,inf_HealDelay=10}] nausea 15
title @a[team=infected,scores={ctime_TicksInSec=0,inf_HealDelay=30}] title [{"text":"Hit!","color":"red"}]
title @a[team=infected,scores={ctime_TicksInSec=0,inf_HealDelay=30}] subtitle [{"text":"Hit! You will be healed in 30 seconds","color":"red"}]
title @a[team=infected,scores={ctime_TicksInSec=0,inf_HealDelay=20}] title [{"text":"20 seconds ...","color":"red"}]
title @a[team=infected,scores={ctime_TicksInSec=0,inf_HealDelay=10}] title [{"text":"10 seconds ...","color":"red"}]
title @a[team=sane,scores={ctime_TicksInSec=0,inf_HealDelay=-1}] title [{"text":"Healed!","color":"green"}]
title @a[team=sane,scores={ctime_TicksInSec=0,inf_HealDelay=-1}] subtitle [{"text":"You are now in the sane team","color":"green"}]
tellraw @a[team=sane,scores={ctime_TicksInSec=0,inf_HealDelay=-1}] [{"text":"Healed! You are now in the sane team","color":"green"}]


