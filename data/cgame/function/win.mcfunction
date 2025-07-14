# executed as/by the winning player

playsound minecraft:entity.wither.spawn master @a[scores={cgame_on=1}] ~ ~ ~

title @a[scores={cgame_on=1}] title [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]
tellraw @a[scores={cgame_on=1}] [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]

scoreboard players set #ctime_Pause ctime_variable 1
scoreboard players set #cmagic_barrel_drop_delay cmagic_variable -1
scoreboard players set @a cgame_on 0
