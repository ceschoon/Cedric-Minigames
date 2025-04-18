
scoreboard players set @a tag_On 1
scoreboard players set @a[scores={cfp_is_fake_player=1}] tag_On 0

scoreboard players set @a[scores={tag_On=1}] ctime_Pause 0
scoreboard players set @a[scores={tag_On=1}] ctime_Ticks 0
scoreboard players set @a[scores={tag_On=1}] ctime_Seconds 0
scoreboard players set @a[scores={tag_On=1}] ctime_Total 0
scoreboard players set @a[scores={tag_On=1}] tag_Score 0
scoreboard players set @a[scores={tag_On=1}] tag_Kills 0
scoreboard players set @a[scores={tag_On=1}] tag_KillDetect 0
scoreboard players set @a[scores={tag_On=1}] tag_Tag 0

scoreboard objectives setdisplay sidebar tag_Score

team join tag_hunter @a[scores={tag_On=1}]

title @a[scores={tag_On=1}] title {"text":"Tag Game Starts Now!","color":"gold"}

