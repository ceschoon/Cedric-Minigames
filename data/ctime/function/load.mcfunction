
## Player variables
scoreboard objectives remove ctime_DeathCount
scoreboard objectives add ctime_DeathCount deathCount
scoreboard players set @a ctime_DeathCount 0

## For global variables
scoreboard objectives remove ctime_variable
scoreboard objectives add ctime_variable dummy

## Set global variables
scoreboard players set #ctime_Pause ctime_variable 0
scoreboard players set #ctime_Ticks ctime_variable 0
scoreboard players set #ctime_Seconds ctime_variable 0
scoreboard players set #ctime_TicksInSec ctime_variable 0

say Cedric Time module: reloaded!
