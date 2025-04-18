# executed as/by winning player

playsound minecraft:entity.wither.spawn master @a[scores={tag_On=1}] ~ ~ ~

title @a[scores={tag_On=1}] title [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]
tellraw @a[scores={tag_On=1}] [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]

scoreboard players set @a[scores={tag_On=1}] ctime_Pause 1
scoreboard players set @a tag_On 0
