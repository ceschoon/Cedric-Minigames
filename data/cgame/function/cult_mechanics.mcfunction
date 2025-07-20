

#########################################################
## Bonus effects

# when cultists are grouped together
execute as @a[team=cgame_cultist,scores={cgame_on=1}] at @s if entity @a[team=cgame_cultist,scores={cgame_on=1},distance=1..10] run effect give @s resistance 255 1 false

# or when a cultist is alone...
scoreboard players set #number_of_cultists cgame_variable 0
execute as @a[team=cgame_cultist,scores={cgame_on=1}] run scoreboard players add #number_of_cultists cgame_variable 1
execute as @a[team=cgame_cultist,scores={cgame_on=1}] if score #number_of_cultists cgame_variable matches 1 run effect give @s resistance 255 2 false


#########################################################
## Conversion

execute as @a[team=cgame_regular,scores={cgame_on=1},nbt={active_effects:[{id:"minecraft:luck"}]}] run scoreboard players add @s cgame_cult_conversion_delay 2
scoreboard players remove @a[scores={cgame_on=1,cgame_cult_conversion_delay=1..}] cgame_cult_conversion_delay 1

title @a[team=cgame_regular,scores={cgame_on=1,cgame_cult_conversion_delay=1..}] actionbar [{"text":"Conversion progress: ","color":"dark_green"},{"score":{"name": "*", "objective": "cgame_cult_conversion_delay"},"color":"dark_green"},{"text":"/600","color":"dark_green"}]

team join cgame_cultist @a[team=cgame_regular,scores={cgame_on=1,cgame_cult_conversion_delay=600..}]
title @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_conversion_delay=600..}] title [{"text":"You are now in the cultist team","color":"dark_green"}]


#########################################################
## Conversion effects

effect give @a[team=cgame_regular,scores={cgame_cult_conversion_delay=1..}] resistance 1 4
effect give @a[team=cgame_regular,scores={cgame_cult_conversion_delay=1..}] absorption 1 4
effect give @a[team=cgame_regular,scores={cgame_cult_conversion_delay=1..}] regeneration 1 4

execute if score #ctime_TicksInSec ctime_variable matches 0 run effect give @a[team=cgame_regular,scores={cgame_cult_conversion_delay=300},nbt={active_effects:[{id:"minecraft:luck"}]}] nausea 15


#########################################################
## Proximity warnings

execute at @a[team=!cgame_cultist,scores={cgame_on=1}] if score #ctime_TicksInSec ctime_variable matches 0 run playsound minecraft:entity.warden.heartbeat ambient @a[team=cgame_cultist] ~ ~ ~ 2
execute at @a[team=!cgame_cultist,scores={cgame_on=1}] if score #ctime_TicksInSec ctime_variable matches 7 run playsound minecraft:entity.warden.heartbeat ambient @a[team=cgame_cultist] ~ ~ ~ 2

execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_warning_delay=600..}] at @s if entity @a[team=!cgame_cultist,scores={cgame_on=1},distance=..30] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~
execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_warning_delay=600..}] at @s if entity @a[team=!cgame_cultist,scores={cgame_on=1},distance=..30] run tellraw @s [{"text":"A non-clutist player is nearby...","color":"red"}]
execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_warning_delay=600..}] at @s if entity @a[team=!cgame_cultist,scores={cgame_on=1},distance=..30] run scoreboard players set @s cgame_cult_warning_delay 0

scoreboard players add @a[scores={cgame_on=1}] cgame_cult_warning_delay 1


