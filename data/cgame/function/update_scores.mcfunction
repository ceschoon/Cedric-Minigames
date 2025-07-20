
##########################################
## Ticking scores
## Note: I update on tick 19 because on tick 0 the score is always time+1

execute if score #cgame_preptime cgame_setting matches ..0 if score #ctime_TicksInSec ctime_variable matches 19 run scoreboard players add @a[team=cgame_increment,scores={cgame_on=1}] cgame_score 1
execute if score #cgame_preptime cgame_setting matches ..0 if score #ctime_TicksInSec ctime_variable matches 19 run scoreboard players remove @a[team=cgame_decrement,scores={cgame_on=1}] cgame_score 1
execute if score #cgame_preptime cgame_setting matches ..0 if score #ctime_TicksInSec ctime_variable matches 19 run scoreboard players add @a[team=cgame_boss,scores={cgame_on=1}] cgame_score 1

execute if score #cgame_preptime cgame_setting matches ..0 if score #ctime_TicksInSec ctime_variable matches 19 run scoreboard players add @a[scores={cgame_on=1,cgame_is_on_hill=1}] cgame_score 1

##########################################
## Other scores

scoreboard players add @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_detect=1..}] cgame_score 100
scoreboard players add @a[team=!cgame_cultist,scores={cgame_on=1,cgame_cult_kill_detect=1..}] cgame_score 100
