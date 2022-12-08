
## Increment time
scoreboard players add @s ctime_Ticks 1
scoreboard players add @s ctime_TicksInSec 1
scoreboard players add @s[scores={ctime_TicksInSec=20..}] ctime_Seconds 1
scoreboard players set @s[scores={ctime_TicksInSec=20..}] ctime_TicksInSec 0

