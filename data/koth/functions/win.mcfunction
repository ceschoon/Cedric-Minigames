scoreboard players set @a koth_On 0

title @a title [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]
tellraw @a [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~

schedule function koth:firework1 1s
schedule function koth:firework2 2s
schedule function koth:firework3 3s
schedule function koth:firework4 4s
schedule function koth:firework5 5s
schedule function koth:firework6 6s

effect give @s strength 600 255
effect give @s resistance 600 255
effect give @s regeneration 600 255 

scoreboard players set @a ctime_Pause 1

