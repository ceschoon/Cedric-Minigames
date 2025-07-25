
## Temporary variable to mark the winners
scoreboard players set @a[scores={cgame_on=1}] cgame_temp 0

## Find player with lowest score (and no active tag)
scoreboard players operation #maxscore cgame_score = @r[scores={cgame_on=1}] cgame_score
execute as @a[scores={cgame_on=1}] run scoreboard players operation #maxscore cgame_score > @s cgame_score
execute as @a[scores={cgame_on=1}] if score @s cgame_score = #maxscore cgame_score run scoreboard players set @s cgame_temp 1

## Tell who the winner is
title @a[scores={cgame_on=1}] title [{"selector":"@a[scores={cgame_on=1,cgame_temp=1}]"},{"text":" won the game!","color":"gold"}]
tellraw @a[scores={cgame_on=1}] [{"selector":"@a[scores={cgame_on=1,cgame_temp=1}]"},{"text":" won the game!","color":"gold"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s

scoreboard players set #ctime_Pause ctime_variable 1
scoreboard players set #cmagic_barrel_drop_delay cmagic_variable -1
scoreboard players set @a cgame_on 0
