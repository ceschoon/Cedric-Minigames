
# permanent effects
effect give @a[scores={tag_rtagxs=1}] strength 20 255
effect give @a night_vision 20 255
effect give @a[scores={tag_gamemode=1,tag_Tag=0}] glowing 1 255

# increment score
scoreboard players add @a[scores={tag_Tag=1,ctime_TicksInSec=0}] tag_Score 1

# death mechanics
execute if entity @a run function tag:deathmechanics

# detect win
execute as @a[scores={tag_gamemode=0}] run function tag:detectwin0
execute as @a[scores={tag_gamemode=1}] run function tag:detectwin1

# enforce additional rules (legacy)
#execute as @a at @s run function tagrules:main

# make players invincible during pauses
effect give @a[scores={ctime_Pause=1}] resistance 1 255

# reward kills
scoreboard players add @a[scores={tag_Kills=1..,tag_kill_rewards=1,tag_gamemode=0,tag_rtag=1,tag_Score=..600}] tag_Score 60
scoreboard players add @a[scores={tag_Kills=1..,tag_kill_rewards=1,tag_gamemode=0,tag_rtagxs=1,tag_Score=..300}] tag_Score 10
scoreboard players remove @a[scores={tag_Kills=1..,tag_kill_rewards=1,tag_gamemode=1,tag_rtag=1,tag_Score=1200..}] tag_Score 60
scoreboard players remove @a[scores={tag_Kills=1..,tag_kill_rewards=1,tag_gamemode=1,tag_rtagxs=1,tag_Score=600..}] tag_Score 10
scoreboard players set @a[scores={tag_Kills=1..}] tag_Kills 0

