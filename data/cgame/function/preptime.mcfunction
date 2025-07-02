
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 0 run title @a[scores={cgame_on=1}] title [{"text":"Go!","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 60 run title @a[scores={cgame_on=1}] title [{"text":"1 minute","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 120 run title @a[scores={cgame_on=1}] title [{"text":"2 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 300 run title @a[scores={cgame_on=1}] title [{"text":"5 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 600 run title @a[scores={cgame_on=1}] title [{"text":"10 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 900 run title @a[scores={cgame_on=1}] title [{"text":"15 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 1200 run title @a[scores={cgame_on=1}] title [{"text":"20 minutes","color":"gold"}]

execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 0 run tellraw @a[scores={cgame_on=1}] [{"text":"Game begins now!","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 60 run tellraw @a[scores={cgame_on=1}] [{"text":"Time left for preparations:  1 minute","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 120 run tellraw @a[scores={cgame_on=1}] [{"text":"Time left for preparations:  2 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 300 run tellraw @a[scores={cgame_on=1}] [{"text":"Time left for preparations:  5 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 600 run tellraw @a[scores={cgame_on=1}] [{"text":"Time left for preparations: 10 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 900 run tellraw @a[scores={cgame_on=1}] [{"text":"Time left for preparations: 15 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 1200 run tellraw @a[scores={cgame_on=1}] [{"text":"Time left for preparations: 20 minutes","color":"gold"}]

execute if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_preptime cgame_setting matches 0.. run scoreboard players remove #cgame_preptime cgame_setting 1

