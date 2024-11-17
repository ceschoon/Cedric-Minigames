# executed as/by winning player

execute unless entity @a[scores={tag_On=2}] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~

scoreboard players set @a tag_On 0
scoreboard players set @a ctime_Pause 1

title @a title [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]
tellraw @a [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]

