# Start of rtag game (variant of base tag)

function tag:startbasic

scoreboard players set #tag_TimeToWin tag_setting 1200

gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

time set 0
weather clear

gamemode survival @a[scores={tag_On=1}]
advancement revoke @a[scores={tag_On=1}] everything

effect clear @a[scores={tag_On=1}]
effect give @a[scores={tag_On=1}] resistance 10 255
effect give @a[scores={tag_On=1}] regeneration 10 10
effect give @a[scores={tag_On=1}] saturation 10 10

clear @a[scores={tag_On=1}]
give @a[scores={tag_On=1}] compass
execute as @a[scores={tag_On=1}] run function tag:giverespawnset

execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 300
setworldspawn ~ ~ ~

# Tp all players to bring them in the correct dimension
tp @a[scores={tag_On=1}] @s

# Spread Players (use dimroof variable from compass module)
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 150 150 false @a[scores={tag_On=1}]
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 150 150 under 127 false @a[scores={tag_On=1}]
execute as @a[scores={tag_On=1}] at @s run spawnpoint @s ~ ~ ~

