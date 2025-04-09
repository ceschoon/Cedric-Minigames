# detect win (stag mode, depends on game variant)

scoreboard objectives remove temp
scoreboard objectives add temp dummy
scoreboard players set @a temp -1

# count number of players with score below limit
execute if entity @a[scores={tag_rtag=1}] store result score @a temp run execute if entity @a[scores={tag_Scores=..1200}]
execute if entity @a[scores={tag_rtagxs=1}] store result score @a temp run execute if entity @a[scores={tag_Score=..600}]
execute as @a[scores={temp=1}] run function tag:win
