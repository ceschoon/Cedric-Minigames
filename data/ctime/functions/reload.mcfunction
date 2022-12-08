
scoreboard objectives remove ctime_DeathCount
scoreboard objectives remove ctime_Pause
scoreboard objectives remove ctime_Ticks
scoreboard objectives remove ctime_Seconds
scoreboard objectives remove ctime_TicksInSec

scoreboard objectives add ctime_DeathCount deathCount
scoreboard objectives add ctime_Pause dummy
scoreboard objectives add ctime_Ticks dummy
scoreboard objectives add ctime_Seconds dummy
scoreboard objectives add ctime_TicksInSec dummy

scoreboard players set @a ctime_DeathCount 0
scoreboard players set @a ctime_Pause 0
scoreboard players set @a ctime_Ticks 0
scoreboard players set @a ctime_Seconds 0
scoreboard players set @a ctime_TicksInSec 0

say Cedric Time module: reloaded!
