# detect win (stag mode, depends on game variant)

# note: 
# tag_On = 0 means we are not playing
# tag_On = 1 means we are playing
# tag_On = 2 means the game is finished and we are analysing scores

scoreboard objectives remove temp
scoreboard objectives add temp dummy
scoreboard players set @a temp -1

# count number of players with score below limit
execute if entity @a[scores={tag_rtag=1}] store result score @a temp run execute if entity @a[scores={tag_Scores=..1200}]
execute if entity @a[scores={tag_rtagxs=1}] store result score @a temp run execute if entity @a[scores={tag_Score=..600}]

execute if entity @a[scores={tag_On=1,tag_rtag=1,temp=1}] run scoreboard players set @a tag_On -1
execute if entity @a[scores={tag_On=1,tag_rtagxs=1,temp=1}] run scoreboard players set @a tag_On -1
execute if entity @a[scores={tag_On=-1}] run function tag:copyscores
execute as @a[scores={tag_On=-1}] at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~
title @a[scores={tag_On=-1}] title [{"text":"End of the game!","color":"gold"}]
tellraw @a[scores={tag_On=-1}] [{"text":"Analysing scores...","color":"gold"}]
scoreboard players set @a[scores={tag_On=-1}] tag_On 2
scoreboard players remove @a[scores={tag_On=2,tag_ScoreCopy=0..}] tag_ScoreCopy 1
execute as @r[scores={tag_On=2,tag_ScoreCopy=..-1}] run function tag:win

