# executed when everyone has been infected

title @a title [{"text":"Game over!","color":"green"}]
title @a subtitle [{"text":"Sane players won","color":"green"}]
tellraw @a [{"text":"Game over! Sane players won","color":"green"}]

execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~

scoreboard players set @a inf_On 0
scoreboard players set @a ctime_Pause 1

