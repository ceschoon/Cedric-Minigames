# executed when everyone has been infected

title @a title [{"text":"Game over!","color":"red"}]
tellraw @a [{"text":"Game over!","color":"red"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~

scoreboard players set @a inf_On 0
scoreboard players set @a ctime_Pause 1

