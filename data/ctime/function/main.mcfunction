## Note: Two sets of variables are kept (global and per-player) because both are currently used in different minigames.

## Increment time
scoreboard players add #ctime_Ticks ctime_variable 1
scoreboard players add #ctime_TicksInSec ctime_variable 1
execute if score #ctime_TicksInSec ctime_variable matches 20.. run scoreboard players add #ctime_Seconds ctime_variable 1
execute if score #ctime_TicksInSec ctime_variable matches 20.. run scoreboard players set #ctime_TicksInSec ctime_variable 0

