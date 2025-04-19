
scoreboard players set @a hunt_On 2
scoreboard players set @a[scores={cfp_is_fake_player=1}] hunt_On 0

scoreboard players set @a[scores={hunt_On=2}] hunt_Hunted 0
scoreboard players set @a[scores={hunt_On=2}] ctime_Ticks 0
scoreboard players set @a[scores={hunt_On=2}] ctime_Seconds 0
scoreboard players set @a[scores={hunt_On=2}] ctime_TicksInSec 0
scoreboard players set @a[scores={hunt_On=2}] ctime_Pause 0

scoreboard objectives setdisplay sidebar ctime_Seconds
scoreboard objectives modify ctime_Seconds displayname "Time Hunted"

gamerule keepInventory false
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

time set 0

execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 1000000
setworldspawn ~ ~ ~

execute as @a[scores={hunt_On=2}] at @s run spawnpoint @s ~ ~ ~

effect clear @a[scores={hunt_On=2}]
effect give @a[scores={hunt_On=2}] resistance 10 255
effect give @a[scores={hunt_On=2}] regeneration 10 10
effect give @a[scores={hunt_On=2}] saturation 10 10
effect give @a[scores={hunt_On=2}] slowness 10 10

function hunt:newrunner

gamemode survival @a[scores={hunt_On=2}]

clear @a[scores={hunt_On=2}]
give @a[scores={hunt_On=2,hunt_Hunted=0}] compass
