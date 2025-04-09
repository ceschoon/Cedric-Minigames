
# detect death and give respawn kit
execute as @a[scores={ctime_DeathCount=5}] at @s run function tag:giverespawnset

###################
# (gamemode rtag) 

# In case of death from pve, player with lowest score becomes the new runner 
execute if entity @a[scores={tag_gamemode=0,tag_Tag=1,ctime_DeathCount=5}] unless entity @a[scores={tag_KillDetect=1..}] run scoreboard players operation #minscore tag_Score = @r[scores={tag_Tag=0}] tag_Score
execute if entity @a[scores={tag_gamemode=0,tag_Tag=1,ctime_DeathCount=5}] unless entity @a[scores={tag_KillDetect=1..}] as @a[scores={tag_Tag=0}] run scoreboard players operation #minscore tag_Score < @s tag_Score
execute if entity @a[scores={tag_gamemode=0,tag_Tag=1,ctime_DeathCount=5}] unless entity @a[scores={tag_KillDetect=1..}] as @a[scores={tag_Tag=0}] if score @s tag_Score = #minscore tag_Score run function tag:newrunner

# In case of player kill, the killer becomes the new runner
execute if entity @a[scores={tag_gamemode=0,tag_Tag=1,ctime_DeathCount=5}] as @r[scores={tag_KillDetect=1..}] run function tag:newrunner

# Reset kill detector
execute unless entity @a[scores={tag_gamemode=0,tag_Tag=1,ctime_DeathCount=1..}] run scoreboard players set @a tag_KillDetect 0

###################
# (gamemode stag)
 
# Any player who dies gets the tag
execute as @a[scores={tag_gamemode=1,ctime_DeathCount=5}] run function tag:newrunner
