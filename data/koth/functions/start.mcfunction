
# Scoreboards
scoreboard objectives setdisplay sidebar koth_SecondsOnPlatform

scoreboard players set @a koth_On 1
scoreboard players set @a koth_SecondsOnPlatform 0
scoreboard players set @a ctime_Ticks 0
scoreboard players set @a ctime_Seconds 0
scoreboard players set @a ctime_TicksInSec 0
scoreboard players set @a ctime_Pause 0

# Gamerules
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

gamemode survival @a

# Store position to target hill with compass
function compass:trackxyz
execute store result score @a X run data get entity @s Pos[0] 1
execute store result score @a Y run data get entity @s Pos[1] 1
execute store result score @a Z run data get entity @s Pos[2] 1

# Summon armorstand on top of the hill (for targeting position)
kill @e[type=armor_stand]
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"hill\"",CustomNameVisible:0}

# World
execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 1000000
time set 0

# Tp all players to bring them in the correct dimension
tp @a @s

# Spread Players (use dimroof variable from compass module)
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 200 200 false @a
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 200 200 under 127 false @a

# Set spawn (world spawn too, should not be close to platform)
execute as @a at @s run spawnpoint @s ~ ~ ~
execute at @r run setworldspawn ~ ~ ~

# Effects
effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

# Inventory
clear @a
give @a lime_bed
execute as @a at @s run function koth:giverespawnset

# Game starts message
title @a title {"text":"Go!","color":"gold"}
tellraw @a {"text":"King of the Hill starts Now!","color":"gold"}
tellraw @a [{"text":"First player who stays on the platform for more than 1200 seconds (20 min) wins the game!","color":"gold"}]

