
execute if score #ctime_Pause ctime_variable matches 0 run function ctime:main

## Also advance time if ctime_TicksInSec is zero, otherwise other
## datapacks may increment one second every tick when the game is paused
execute if score #ctime_Pause ctime_variable matches 1 if score #ctime_TicksInSec ctime_variable matches 0 run function ctime:main

## Death detection
scoreboard players set @a[scores={ctime_DeathCount=2..}] ctime_DeathCount 0
scoreboard players set @a[scores={ctime_DeathCount=1}] ctime_DeathCount 2

