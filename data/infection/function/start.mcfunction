
scoreboard players set @a inf_On 1
scoreboard players set @a[scores={cfp_is_fake_player=1}] inf_On 0

# Reset player variables (for all players)
scoreboard players set @a inf_Mole 0
scoreboard players set @a inf_Kills 0
scoreboard players set @a inf_TotalKills 0
scoreboard players set @a inf_WarnDelay 0
scoreboard players set @a inf_HealDelay 1000

# Reset global variables
scoreboard players set #ctime_TicksInSec ctime_variable 0
scoreboard players set #ctime_Seconds ctime_variable 0
scoreboard players set #ctime_Pause ctime_variable 0
scoreboard players set #inf_DebugMode inf_variable 0
scoreboard players set #compass_active compass_setting 1

scoreboard objectives setdisplay sidebar inf_TotalKills

gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

gamemode survival @a[scores={inf_On=1}]
advancement revoke @a[scores={inf_On=1}] everything

time set 0
weather clear

execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 300
setworldspawn ~ ~ ~

# Summon armorstand to indicate the position where the shrine must be constructed
# Use spreadplayers command to make sure that the shrine is placed at the surface
spreadplayers ~ ~ 50 50 false @s
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run spreadplayers ~ ~ 50 50 under 127 false @s
kill @e[type=armor_stand]
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,CustomName:"\"shrine\"",CustomNameVisible:0b}
execute at @s align xyz run tp @e[type=armor_stand,name=shrine] ~.5 ~-1.5 ~.5
execute at @e[type=armor_stand,name=shrine] run fill ~-2 ~ ~-2 ~2 ~2 ~2 air
scoreboard players set #shrine_active inf_variable 0

# Tp all players to bring them in the correct dimension
tp @a[scores={inf_On=1}] @s

# Spread Players
spreadplayers ~ ~ 150 150 false @a[scores={inf_On=1}]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run spreadplayers ~ ~ 150 150 under 127 false @a[scores={inf_On=1}]

execute as @a[scores={inf_On=1}] at @s run spawnpoint @s ~ ~ ~

effect clear @a[scores={inf_On=1}]
effect give @a[scores={inf_On=1}] resistance 10 255
effect give @a[scores={inf_On=1}] regeneration 10 10
effect give @a[scores={inf_On=1}] saturation 10 10

clear @a[scores={inf_On=1}]
# give nothing to start, the sane players must struggle to survive

team empty infected
team empty sane
team join sane @a[scores={inf_On=1}]

# All sane at the start but one of them is a mole whose goal is to kill his 
# teammates and spread the "infection"
scoreboard players set @r[scores={inf_On=1}] inf_Mole 1

loot give @a[scores={inf_Mole=1}] loot cmagic:starter_kit
item replace entity @a[scores={inf_Mole=1}] inventory.0 with black_banner[banner_patterns=[{pattern:skull,color:green}],lore=['{"text":"Remove the banner from this slot to join the infected team."}']]

title @a[scores={inf_On=1}] title {"text":"Infection Game Starts Now!","color":"red"}
title @a[team=sane,scores={inf_Mole=0}] subtitle {"text":"You will become infected if you die","color":"red"}
title @a[team=sane,scores={inf_Mole=1}] subtitle {"text":"You are a mole. Your goal is to kill your teammates.","color":"red"}
title @a[team=infected] subtitle {"text":"You are infected","color":"red"}
tellraw @a[team=sane,scores={inf_Mole=0}] [{"text":"Infection Game Starts Now! You will become infected if you die","color":"red"}]
tellraw @a[team=sane,scores={inf_Mole=1}] [{"text":"Infection Game Starts Now! You are a mole. Your goal is to kill your teammates.","color":"red"}]
tellraw @a[team=infected] [{"text":"Infection Game Starts Now! You are infected","color":"red"}]




