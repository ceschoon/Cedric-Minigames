# Start of rtag game (variant of base tag)

function tag:startbasic

gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

time set 0

gamemode survival @a

effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

clear @a
give @a compass
function tag:giverespawnset

execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 400
setworldspawn ~ ~ ~

# Tp all players to bring them in the correct dimension
tp @a @s

# Spread Players (use dimroof variable from compass module)
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 200 200 false @a
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 200 200 under 127 false @a
execute as @a at @s run spawnpoint @s ~ ~ ~

scoreboard players set @a tag_rtag 1
tellraw @a [{"text":"rtag: First player who is tagged for more than 1200 seconds (20 min) wins the game!","color":"gold"}]


