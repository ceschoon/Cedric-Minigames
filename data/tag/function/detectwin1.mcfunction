# detect win (stag mode, depends on game variant)

#scoreboard objectives remove temp
#scoreboard objectives add temp dummy
#scoreboard players set @a temp -1

## Count number of players with score below limit
#execute if entity @a[scores={tag_rtag=1}] store result score @a temp run execute if entity @a[scores={tag_Scores=..1200}]
#execute if entity @a[scores={tag_rtagxs=1}] store result score @a temp run execute if entity @a[scores={tag_Score=..600}]
#execute as @a[scores={temp=1}] run function tag:win

## Find player with lowest score (and no active tag)
execute if entity @a[scores={tag_rtag=1,ctime_Seconds=1200..}] run scoreboard players operation #minscore tag_Score = @r[scores={tag_Tag=0}] tag_Score
execute if entity @a[scores={tag_rtag=1,ctime_Seconds=1200..}] as @a[scores={tag_Tag=0}] run scoreboard players operation #minscore tag_Score < @s tag_Score
execute if entity @a[scores={tag_rtag=1,ctime_Seconds=1200..}] as @a[scores={tag_Tag=0}] if score @s tag_Score = #minscore tag_Score run function tag:win

## Same for mini variant
execute if entity @a[scores={tag_rtagxs=1,ctime_Seconds=600..}] run scoreboard players operation #minscore tag_Score = @r[scores={tag_Tag=0}] tag_Score
execute if entity @a[scores={tag_rtagxs=1,ctime_Seconds=600..}] as @a[scores={tag_Tag=0}] run scoreboard players operation #minscore tag_Score < @s tag_Score
execute if entity @a[scores={tag_rtagxs=1,ctime_Seconds=600..}] as @a[scores={tag_Tag=0}] if score @s tag_Score = #minscore tag_Score run function tag:win
