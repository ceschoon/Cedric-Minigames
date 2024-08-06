
title @a title [{"text":"Game over!","color":"green"}]
title @a subtitle [{"text":"Hunter players won","color":"green"}]
tellraw @a [{"text":"Game over! Hunter players won","color":"green"}]

execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~
execute as @a at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~
execute at @a[scores={boss_Who=1}] run particle minecraft:flame ~ ~ ~ 3.0 3.0 3.0 0.1 1000 normal
execute at @a[scores={boss_Who=1}] run summon lightning_bolt ~ ~ ~

effect give @a[scores={boss_Who=1}] levitation 10 1
effect give @a[scores={boss_Who=1}] resistance 15 255

## Set boss_On to 2 because I need a second pass in main to update bossbar and attributes
scoreboard players set @a boss_On 2
scoreboard players set @a boss_Who 0
scoreboard players set @a ctime_Pause 1

