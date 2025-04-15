
execute if score #ctime_Pause ctime_variable matches 0 run scoreboard players set #ctime_Pause ctime_variable 10
execute if score #ctime_Pause ctime_variable matches 1 run scoreboard players set #ctime_Pause ctime_variable 11
execute if score #ctime_Pause ctime_variable matches 10 run scoreboard players set #ctime_Pause ctime_variable 1
execute if score #ctime_Pause ctime_variable matches 11 run scoreboard players set #ctime_Pause ctime_variable 0

scoreboard players set @a[scores={ctime_Pause=0}] ctime_Pause 10
scoreboard players set @a[scores={ctime_Pause=1}] ctime_Pause 11
scoreboard players set @a[scores={ctime_Pause=10}] ctime_Pause 1
scoreboard players set @a[scores={ctime_Pause=11}] ctime_Pause 0

execute if score #ctime_Pause ctime_variable matches 1 run tellraw @a [{"text":"Time module: Game Paused","color":"gold"}]
execute if score #ctime_Pause ctime_variable matches 0 run tellraw @a [{"text":"Time module: Game Restarted","color":"gold"}]


