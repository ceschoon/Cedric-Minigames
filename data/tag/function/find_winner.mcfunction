
## Find player with lowest score (and no active tag)
scoreboard players operation #minscore tag_Score = @r[scores={tag_On=1,tag_Tag=0}] tag_Score
execute as @a[scores={tag_On=1,tag_Tag=0}] run scoreboard players operation #minscore tag_Score < @s tag_Score
execute as @a[scores={tag_On=1,tag_Tag=0}] if score @s tag_Score = #minscore tag_Score run function tag:win

