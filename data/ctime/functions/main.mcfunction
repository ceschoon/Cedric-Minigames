
execute as @a[scores={ctime_Pause=0}] run function ctime:main2

## Also advance time if ctime_TicksInSec is zero, otherwise other
## datapacks may increment one second every tick when the game is paused
execute as @a[scores={ctime_Pause=1,ctime_TicksInSec=0}] run function ctime:main2

## Delay and reset death detection
scoreboard players set @a[scores={ctime_DeathCount=5}] ctime_DeathCount 0
scoreboard players set @a[scores={ctime_DeathCount=4}] ctime_DeathCount 5
scoreboard players set @a[scores={ctime_DeathCount=3}] ctime_DeathCount 4
scoreboard players set @a[scores={ctime_DeathCount=2}] ctime_DeathCount 3
scoreboard players set @a[scores={ctime_DeathCount=1}] ctime_DeathCount 2

