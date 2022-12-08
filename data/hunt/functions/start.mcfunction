
scoreboard players set @a hunt_On 2
scoreboard players set @a hunt_Hunted 0
scoreboard players set @a ctime_Ticks 0
scoreboard players set @a ctime_Seconds 0
scoreboard players set @a ctime_TicksInSec 0
scoreboard players set @a ctime_Pause 0

gamerule keepInventory false
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

time set 0

execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 1000000
setworldspawn ~ ~ ~

execute as @a at @s run spawnpoint @s ~ ~ ~

effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10
effect give @a slowness 10 10

function hunt:newrunner

clear @a
give @a[scores={hunt_Hunted=0}] compass
