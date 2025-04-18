
scoreboard players set @a koth_On 1
scoreboard players set @a[scores={cfp_is_fake_player=1}] koth_On 0

# Reset player variables (for all players)
scoreboard players set @a koth_SecondsOnPlatform 0
scoreboard players set @a ctime_Ticks 0
scoreboard players set @a ctime_Seconds 0
scoreboard players set @a ctime_TicksInSec 0
scoreboard players set @a ctime_Pause 0

# Scoreboards
scoreboard objectives setdisplay sidebar koth_SecondsOnPlatform

# Gamerules
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

gamemode survival @a[scores={koth_On=1}]
advancement revoke @a[scores={koth_On=1}] everything

# Target hill with compass
function compass:trackhere

# Summon armorstand on top of the hill (for targeting position)
kill @e[type=armor_stand]
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"hill\"",CustomNameVisible:0}

# World
execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 10000
time set 0

# Tp all players to bring them in the correct dimension
tp @a[scores={koth_On=1}] @s

# Spread Players (use dimroof variable from compass module)
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 100 100 false @a[scores={koth_On=1}]
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 100 100 under 127 false @a[scores={koth_On=1}]

# Set spawn (world spawn too, should not be close to platform)
execute as @a[scores={koth_On=1}] at @s run spawnpoint @s ~ ~ ~
execute at @r[scores={koth_On=1}] run setworldspawn ~ ~ ~

# Effects
effect clear @a[scores={koth_On=1}]
effect give @a[scores={koth_On=1}] resistance 10 255
effect give @a[scores={koth_On=1}] regeneration 10 10
effect give @a[scores={koth_On=1}] saturation 10 10

# Inventory
clear @a[scores={koth_On=1}]
give @a[scores={koth_On=1}] lime_bed
execute as @a[scores={koth_On=1}] at @s run function koth:giverespawnset

# Game starts message
title @a[scores={koth_On=1}] title {"text":"Go!","color":"gold"}
tellraw @a[scores={koth_On=1}] {"text":"King of the Hill starts Now!","color":"gold"}
tellraw @a[scores={koth_On=1}] [{"text":"First player who stays on the platform for more than 1200 seconds (20 min) wins the game!","color":"gold"}]

