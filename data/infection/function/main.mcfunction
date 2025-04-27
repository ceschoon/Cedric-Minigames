
## TODO: Should also kick players with inf_On=0 from the teams??
execute as @a unless score @s inf_On matches 1 run scoreboard players set @s inf_On 0

# effect glowing to all sane players (and infected once shrine is active)
effect give @a[team=sane] glowing 10
execute if score #shrine_active inf_variable matches 1 run effect give @a[team=infected] glowing 10

# track total kills
scoreboard players add @a[scores={inf_On=1,inf_Kills=1..}] inf_TotalKills 1

# give food as reward for kills
give @a[scores={inf_On=1,inf_Kills=1..}] cooked_beef 3
scoreboard players remove @a[scores={inf_On=1,inf_Kills=1..}] inf_Kills 1

# tell sane players when an infected is nearby + play sound
execute at @a[team=infected] if score #ctime_TicksInSec ctime_variable matches 0 run playsound minecraft:entity.warden.heartbeat ambient @a[team=sane] ~ ~ ~ 2
execute at @a[team=infected] if score #ctime_TicksInSec ctime_variable matches 7 run playsound minecraft:entity.warden.heartbeat ambient @a[team=sane] ~ ~ ~ 2
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run tellraw @s [{"text":"An infected player is nearby...","color":"red"}]
execute as @a[team=sane,scores={inf_WarnDelay=60..}] at @s if entity @a[team=infected,distance=..30] run scoreboard players set @s inf_WarnDelay 0

# infect sane players who just died
execute if entity @a[scores={ctime_DeathCount=2},team=sane] as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
execute if entity @a[scores={ctime_DeathCount=2},team=sane] run title @a[team=sane] actionbar [{"text":"One of you lost his life... but will come back soon.","color":"red"}]
team join infected @a[scores={ctime_DeathCount=2},team=sane]

# force players to wear a golden helmet in the nether
execute as @a[scores={inf_On=1}] at @s if dimension minecraft:the_nether run item replace entity @s armor.head with golden_helmet[enchantments={levels:{binding_curse:1}}]

# mole reveal
scoreboard objectives remove inf_test_mole
scoreboard objectives add inf_test_mole dummy
scoreboard players set @a inf_test_mole 0
execute as @a[team=sane,scores={inf_On=1,inf_Mole=1}] unless entity @s[nbt={Inventory:[{id: "minecraft:black_banner", count:1}]}] run scoreboard players set @s inf_test_mole 1
team join infected @a[scores={inf_test_mole=1}]
scoreboard players set @a[scores={inf_test_mole=1}] inf_Mole 0
effect give @a[scores={inf_test_mole=1}] minecraft:absorption infinite 1 false
execute if entity @a[scores={inf_test_mole=1}] run tellraw @a [{"selector":"@a[scores={inf_test_mole=1}]","color":"red"},{"text":" was a mole the whole time!!","color":"red"}]
execute if entity @a[scores={inf_test_mole=1}] as @a at @a run playsound minecraft:entity.ghast.hurt master @s ~ ~ ~

# auto reveal mole as soon as the portal is constructed
execute if score #shrine_active inf_variable matches 1 run team join infected @a[scores={inf_On=1,inf_Mole=1}]
execute if score #shrine_active inf_variable matches 1 run scoreboard players set @a[scores={inf_On=1,inf_Mole=1}] inf_Mole 0

# increment delays
execute if score #ctime_TicksInSec ctime_variable matches 0 run scoreboard players add @a inf_WarnDelay 1

# make players invincible during pauses
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={inf_On=1}] resistance 1 255
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={inf_On=1}] slowness 1 255
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={inf_On=1}] invisibility 1

# detect end of the game (thrid line commented out so sane players do not immediatly win at shrine completion in case the mole did not reveal itself)
execute unless score #inf_DebugMode inf_variable matches 1 unless entity @a[team=sane] run function infection:win_infected
execute unless score #inf_DebugMode inf_variable matches 1 unless entity @a[team=infected] unless entity @a[scores={inf_On=1,inf_Mole=1}] run function infection:win_sane
######execute unless score #inf_DebugMode inf_variable matches 1 unless entity @a[team=infected] if score #shrine_active inf_variable matches 1 run function infection:win_sane

# make it so that sane players get bonuses when grouped together
execute as @a[scores={inf_On=1}] run function infection:bonus_effects

# shrine mechanics
execute at @e[type=armor_stand,name=shrine] run function infection:shrine_mechanics

# convert infected back to sane team using luck potions/effect
execute as @a[scores={inf_On=1}] run function infection:conversion_mechanics


