
## Game starts 10 seconds after start function is executed
execute as @r[scores={hunt_On=2,ctime_Ticks=0}] at @s run title @a title {"text":"10","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=20}] at @s run title @a title {"text":"9","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=40}] at @s run title @a title {"text":"8","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=60}] at @s run title @a title {"text":"7","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=80}] at @s run title @a title {"text":"6","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=100}] at @s run title @a title {"text":"5","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=120}] at @s run title @a title {"text":"4","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=140}] at @s run title @a title {"text":"3","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=160}] at @s run title @a title {"text":"2","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=180}] at @s run title @a title {"text":"1","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=200}] at @s run title @a title {"text":"Go!","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=200}] at @s run tellraw @a {"text":"Hunt starts now!","color":"gold"}
execute as @r[scores={hunt_On=2,ctime_Ticks=200}] at @s run function hunt:start2

## Detect death and give respawn kit
execute as @a[scores={hunt_On=1,ctime_DeathCount=5}] at @s run function hunt:giverespawnset

## Freeze and make players invincible during pauses
effect give @a[scores={ctime_Pause=1}] slowness 1 255
effect give @a[scores={ctime_Pause=1}] resistance 1 255
effect give @a[scores={ctime_Pause=1}] invisibility 1 255

## Detect end of the game
execute as @a[scores={hunt_On=1,hunt_Hunted=1,ctime_DeathCount=5}] run title @a title [{"text":"Game over!","color":"gold"}]
execute as @a[scores={hunt_On=1,hunt_Hunted=1,ctime_DeathCount=5}] run tellraw @a [{"text":"Game over! The hunted player died","color":"gold"}]
execute as @a[scores={hunt_On=1,hunt_Hunted=1,ctime_DeathCount=5}] run scoreboard players set @a ctime_Pause 1
execute as @a[scores={hunt_On=1,hunt_Hunted=1,ctime_DeathCount=5}] run scoreboard players set @a hunt_On 0

