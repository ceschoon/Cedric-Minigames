scoreboard players set @a duels_On 0

title @a title [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]
tellraw @a [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~

schedule function duels:firework1 1s
schedule function duels:firework2 2s
schedule function duels:firework3 3s
schedule function duels:firework4 4s
schedule function duels:firework5 5s
schedule function duels:firework6 6s

effect give @s strength 600 255
effect give @s resistance 600 255
effect give @s glowing 600 255 

scoreboard players add @s duels_Score 1

tellraw @a [{"text":"[Duels: REMATCH]","color":"green", "clickEvent":{"action":"run_command","value":"/function duels:start"}}]

