
## Find player with lowest score (and no active tag)
scoreboard players operation #maxscore cgame_score = @r[team=cgame_regular,scores={cgame_on=1}] cgame_score
execute as @a[team=cgame_regular,scores={cgame_on=1}] run scoreboard players operation #maxscore cgame_score > @s cgame_score
execute as @a[team=cgame_regular,scores={cgame_on=1}] if score @s cgame_score = #maxscore cgame_score run function cgame:win

