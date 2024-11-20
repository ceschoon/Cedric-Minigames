
# detect death and give respawn kit
execute as @a[scores={ctime_DeathCount=5}] at @s run function tag:giverespawnset

# (gamemode rtag) detect death of runner and select new runner
execute as @a[scores={tag_gamemode=0,tag_Tag=1,tag_kbhunter1=1}] run execute as @a[team=tag_hunter1] run function tag:newrunner
execute as @a[scores={tag_gamemode=0,tag_Tag=1,tag_kbhunter2=1}] run execute as @a[team=tag_hunter2] run function tag:newrunner
execute as @a[scores={tag_gamemode=0,tag_Tag=1,tag_kbhunter3=1}] run execute as @a[team=tag_hunter3] run function tag:newrunner
execute as @a[scores={tag_gamemode=0,tag_Tag=1,tag_kbhunter4=1}] run execute as @a[team=tag_hunter4] run function tag:newrunner
execute as @a[scores={tag_gamemode=0,tag_Tag=1,tag_kbhunter5=1}] run execute as @a[team=tag_hunter5] run function tag:newrunner
execute as @a[scores={tag_gamemode=0,tag_Tag=1,tag_kbhunter6=1}] run execute as @a[team=tag_hunter6] run function tag:newrunner
execute as @a[scores={tag_gamemode=0,tag_Tag=1,tag_kbhunter7=1}] run execute as @a[team=tag_hunter7] run function tag:newrunner
execute as @a[scores={tag_gamemode=0,tag_Tag=1,tag_kbhunter8=1}] run execute as @a[team=tag_hunter8] run function tag:newrunner

# (gamemode stag) any player who dies gets the tag
execute as @a[scores={tag_On=1,tag_gamemode=1,ctime_DeathCount=5}] run function tag:newrunner

# (gamemode rtag) player with lowest score becomes runner in case of death from pve
execute as @a[scores={tag_gamemode=0,tag_Tag=1,ctime_DeathCount=5}] run function tag:copyscores
execute as @r[scores={tag_On=1,tag_ScoreCopy=0..29}] run function tag:newrunner
scoreboard players remove @a[scores={tag_ScoreCopy=0..}] tag_ScoreCopy 30

