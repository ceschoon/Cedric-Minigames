
title @a[scores={duels_On=1..}] title [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]
tellraw @a[scores={duels_On=1..}] [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]

execute as @a[scores={duels_On=1..}] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~

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

tellraw @a[scores={duels_On=1..}] [{"text":"[Duels: REMATCH]","color":"green", "clickEvent":{"action":"run_command","value":"/function duels:start"}}]
scoreboard players set @a duels_On 0
