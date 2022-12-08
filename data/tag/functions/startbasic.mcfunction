
scoreboard players set @a tag_rtag 0
scoreboard players set @a tag_rtagxs 0
scoreboard players set @a ctime_Pause 0
scoreboard players set @a tag_Score 0

scoreboard objectives setdisplay sidebar tag_Score

scoreboard players set @a tag_On 1
scoreboard players set @a ctime_Ticks 0
scoreboard players set @a ctime_Seconds 0
scoreboard players set @a ctime_Total 0
scoreboard players set @a tag_ScoreCopy 0
scoreboard players set @a tag_Kills 0
scoreboard players set @a tag_Tag 0

execute as @r at @s run function tag:newrunner

title @a title {"text":"Tag Game Starts Now!","color":"gold"}

