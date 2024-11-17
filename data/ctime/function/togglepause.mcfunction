
scoreboard players set @a[scores={ctime_Pause=0}] ctime_Pause 10
scoreboard players set @a[scores={ctime_Pause=1}] ctime_Pause 11
scoreboard players set @a[scores={ctime_Pause=10}] ctime_Pause 1
scoreboard players set @a[scores={ctime_Pause=11}] ctime_Pause 0

tellraw @a[scores={ctime_Pause=1}] [{"text":"Time module: Game Paused","color":"gold"}]
tellraw @a[scores={ctime_Pause=0}] [{"text":"Time module: Game Restarted","color":"gold"}]

