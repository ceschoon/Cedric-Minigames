
scoreboard objectives setdisplay sidebar ctime_Seconds

scoreboard players set @a boss_On 1
scoreboard players set @a boss_Who 0

bossbar add playerboss "Boss Health"

gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule naturalRegeneration true
gamerule mobGriefing true

execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 300
setworldspawn ~ ~ ~

time set 0
weather clear 999999

# Tp all players to bring them in the correct dimension
tp @a @s

gamemode survival @a
advancement revoke @a everything

effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

clear @a
give @a compass

# Spread Players (use dimroof variable from compass module)
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 150 150 false @a
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 150 150 under 127 false @a
execute as @a at @s run spawnpoint @s ~ ~ ~

# Select the Boss (use the player executing this function)
scoreboard players set @s boss_Who 1
function compass:trackme

give @a[scores={boss_Who=1}] mace
give @a[scores={boss_Who=1}] golden_axe
give @a[scores={boss_Who=1}] golden_pickaxe
give @a[scores={boss_Who=1}] golden_shovel

# Game starts message
title @a title {"text":"Go!","color":"gold"}
tellraw @a[scores={boss_Who=0}] [{"text":"Kill The Boss: Your goal is to kill the player with the golden hat","color":"green"}]
tellraw @a[scores={boss_Who=1}] [{"text":"Kill The Boss: You are the boss. Your goal is to survive as long as possible. Other players will hunt you down.","color":"red"}]


