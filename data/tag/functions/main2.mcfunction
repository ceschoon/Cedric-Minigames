
# permanent effects
effect give @a[scores={tag_rtagxs=1}] strength 20 255
effect give @a night_vision 20 255
effect give @a[scores={tag_gamemode=1,tag_Tag=0}] glowing 1 255

# mining fatigue for the runner (option)
effect give @a[scores={tag_Tag=1,tag_PrepTime=..0,tag_mining_fatigue=1}] mining_fatigue infinite 0 true
effect clear @a[scores={tag_Tag=0,tag_PrepTime=..0}] mining_fatigue

# increment score
scoreboard players add @a[scores={tag_Tag=1,tag_PrepTime=..0,ctime_TicksInSec=0}] tag_Score 1

# death mechanics
execute if entity @a run function tag:deathmechanics

# detect win
execute as @a[scores={tag_gamemode=0}] run function tag:detectwin0
execute as @a[scores={tag_gamemode=1}] run function tag:detectwin1

# enforce additional rules (legacy)
#execute as @a at @s run function tagrules:main

# make players invincible during pauses
effect give @a[scores={ctime_Pause=1}] resistance 1 255

# reward kills (option)
scoreboard players add @a[scores={tag_Kills=1..,tag_kill_rewards=1,tag_gamemode=0,tag_rtag=1,tag_Score=..600}] tag_Score 60
scoreboard players add @a[scores={tag_Kills=1..,tag_kill_rewards=1,tag_gamemode=0,tag_rtagxs=1,tag_Score=..300}] tag_Score 10
scoreboard players remove @a[scores={tag_Kills=1..,tag_kill_rewards=1,tag_gamemode=1,tag_rtag=1,tag_Score=1200..}] tag_Score 60
scoreboard players remove @a[scores={tag_Kills=1..,tag_kill_rewards=1,tag_gamemode=1,tag_rtagxs=1,tag_Score=600..}] tag_Score 10
scoreboard players set @a[scores={tag_Kills=1..}] tag_Kills 0

# preparation time
title @a[scores={ctime_TicksInSec=0,tag_PrepTime=1}] title [{"text":"Go!","color":"gold"}]
title @a[scores={ctime_TicksInSec=0,tag_PrepTime=60}] title [{"text":"1 minute","color":"gold"}]
title @a[scores={ctime_TicksInSec=0,tag_PrepTime=120}] title [{"text":"2 minutes","color":"gold"}]
title @a[scores={ctime_TicksInSec=0,tag_PrepTime=300}] title [{"text":"5 minutes","color":"gold"}]
title @a[scores={ctime_TicksInSec=0,tag_PrepTime=600}] title [{"text":"10 minutes","color":"gold"}]
title @a[scores={ctime_TicksInSec=0,tag_PrepTime=900}] title [{"text":"15 minutes","color":"gold"}]
title @a[scores={ctime_TicksInSec=0,tag_PrepTime=1200}] title [{"text":"20 minutes","color":"gold"}]
tellraw @a[scores={ctime_TicksInSec=0,tag_PrepTime=60}] [{"text":"The score will now increase for the tagged player!","color":"gold"}]
tellraw @a[scores={ctime_TicksInSec=0,tag_PrepTime=60}] [{"text":"Time left before the score increase:  1 minute","color":"gold"}]
tellraw @a[scores={ctime_TicksInSec=0,tag_PrepTime=120}] [{"text":"Time left before the score increase:  2 minutes","color":"gold"}]
tellraw @a[scores={ctime_TicksInSec=0,tag_PrepTime=300}] [{"text":"Time left before the score increase:  5 minutes","color":"gold"}]
tellraw @a[scores={ctime_TicksInSec=0,tag_PrepTime=600}] [{"text":"Time left before the score increase: 10 minutes","color":"gold"}]
tellraw @a[scores={ctime_TicksInSec=0,tag_PrepTime=900}] [{"text":"Time left before the score increase: 15 minutes","color":"gold"}]
tellraw @a[scores={ctime_TicksInSec=0,tag_PrepTime=1200}] [{"text":"Time left before the score increase: 20 minutes","color":"gold"}]
scoreboard players remove @a[scores={tag_PrepTime=1..,ctime_TicksInSec=0}] tag_PrepTime 1
scoreboard players set @a[scores={tag_PrepTime=1..}] tag_Tag 0
execute as @r[scores={tag_PrepTime=1}] run function tag:newrunner