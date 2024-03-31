
scoreboard objectives modify ctime_Seconds displayname "Time"
scoreboard objectives setdisplay sidebar ctime_Seconds

scoreboard players set @a inf_On 1
scoreboard players set @a ctime_TicksInSec 0
scoreboard players set @a ctime_Seconds 0
scoreboard players set @a ctime_Pause 0
scoreboard players set @a inf_WarnDelay 0
scoreboard players set @a inf_HealDelay 0

gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

gamemode survival @a
advancement revoke @a everything

time set 0
weather clear

execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 300
setworldspawn ~ ~ ~

# Summon armorstand to indicate the position where the shrine must be constructed
# Use spreadplayers command to make sure that the shrine is placed at the surface
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 50 50 false @s
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 50 50 under 127 false @s
kill @e[type=armor_stand]
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"shrine\"",CustomNameVisible:0}
execute at @s align xyz run tp @e[type=armor_stand,name=shrine] ~.5 ~-1.5 ~.5
execute at @e[type=armor_stand,name=shrine] run fill ~-2 ~ ~-2 ~2 ~2 ~2 air
scoreboard players set @a shrine_active 0

# Tp all players to bring them in the correct dimension
tp @a @s

# Spread Players (use dimroof variable from compass module)
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 150 150 false @a
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 150 150 under 127 false @a

execute as @a at @s run spawnpoint @s ~ ~ ~

effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

clear @a
# give nothing to start, the sane players must struggle to survive

team empty infected
team empty sane
team join sane @a

# All sane at the start but one of them is a mole whose goal is to kill his 
# teammates and spread the "infection"
scoreboard players set @a inf_Mole 0
scoreboard players set @s inf_Mole 1
item replace entity @s hotbar.8 with black_banner{display:{Lore:["\"Remove the banner from this slot to join the infected team.\""]},BlockEntityTag:{Patterns:[{Pattern:"sku",Color:13}]}} 1

title @a title {"text":"Infection Game Starts Now!","color":"red"}
title @a[team=sane,scores={inf_Mole=0}] subtitle {"text":"You will become infected if you die","color":"red"}
title @a[team=sane,scores={inf_Mole=1}] subtitle {"text":"You are a mole. Your goal is to kill your teammates.","color":"red"}
title @a[team=infected] subtitle {"text":"You are infected","color":"red"}
tellraw @a[team=sane,scores={inf_Mole=0}] [{"text":"Infection Game Starts Now! You will become infected if you die","color":"red"}]
tellraw @a[team=sane,scores={inf_Mole=1}] [{"text":"Infection Game Starts Now! You are a mole. Your goal is to kill your teammates.","color":"red"}]
tellraw @a[team=infected] [{"text":"Infection Game Starts Now! You are infected","color":"red"}]




