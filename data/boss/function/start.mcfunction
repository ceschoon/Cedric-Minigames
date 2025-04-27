

scoreboard players set @a boss_On 1
scoreboard players set @a[scores={cfp_is_fake_player=1}] boss_On 0
scoreboard players set @a[scores={boss_On=1}] boss_Who 0

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
tp @a[scores={boss_On=1}] @s

gamemode survival @a[scores={boss_On=1}]
advancement revoke @a[scores={boss_On=1}] everything

effect clear @a[scores={boss_On=1}]
effect give @a[scores={boss_On=1}] resistance 10 255
effect give @a[scores={boss_On=1}] regeneration 10 10
effect give @a[scores={boss_On=1}] saturation 10 10

clear @a[scores={boss_On=1}]
give @a[scores={boss_On=1}] compass

# Spread Players (use dimroof variable from compass module)
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 150 150 false @a[scores={boss_On=1}]
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 150 150 under 127 false @a[scores={boss_On=1}]
execute as @a[scores={boss_On=1}] at @s run spawnpoint @s ~ ~ ~

# Select the Boss (use the player executing this function)
scoreboard players set @s boss_Who 1
function compass:trackme

give @a[scores={boss_On=1,boss_Who=1}] golden_axe
give @a[scores={boss_On=1,boss_Who=1}] golden_pickaxe
give @a[scores={boss_On=1,boss_Who=1}] golden_shovel
#give @a[scores={boss_On=1,boss_Who=1}] mace

loot give @a[scores={boss_On=1,boss_Who=1}] loot cmagic:magical_item

# Game starts message
title @a[scores={boss_On=1}] title {"text":"Go!","color":"gold"}
tellraw @a[scores={boss_On=1,boss_Who=0}] [{"text":"Kill The Boss: Your goal is to kill the player with the golden hat","color":"green"}]
tellraw @a[scores={boss_On=1,boss_Who=1}] [{"text":"Kill The Boss: You are the boss. Your goal is to survive as long as possible. Other players will hunt you down.","color":"red"}]


