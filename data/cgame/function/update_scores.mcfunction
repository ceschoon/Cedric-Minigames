
##########################################
## Ticking scores

execute if score #cgame_preptime cgame_setting matches ..0 if score #ctime_TicksInSec ctime_variable matches 0 run scoreboard players add @a[team=cgame_increment,scores={cgame_on=1}] cgame_score 1
execute if score #cgame_preptime cgame_setting matches ..0 if score #ctime_TicksInSec ctime_variable matches 0 run scoreboard players remove @a[team=cgame_decrement,scores={cgame_on=1}] cgame_score 1
execute if score #cgame_preptime cgame_setting matches ..0 if score #ctime_TicksInSec ctime_variable matches 0 run scoreboard players add @a[team=cgame_boss,scores={cgame_on=1}] cgame_score 1

execute if score #cgame_preptime cgame_setting matches ..0 if score #ctime_TicksInSec ctime_variable matches 0 run scoreboard players add @a[scores={cgame_on=1,cgame_is_on_hill=1}] cgame_score 1

##########################################
## Other scores

scoreboard players add @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_detect=1..}] cgame_score 100
execute if entity @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_detect=1..}] as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
