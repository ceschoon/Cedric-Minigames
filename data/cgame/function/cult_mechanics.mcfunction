

#########################################################
## Bonus effects

# when cultists are grouped together
execute as @a[team=cgame_cultist,scores={cgame_on=1}] at @s if entity @a[team=cgame_cultist,scores={cgame_on=1},distance=1..10] run effect give @s resistance 255 1 false

# or when a cultist is alone...
scoreboard players set #number_of_cultists cgame_variable 0
execute as @a[team=cgame_cultist,scores={cgame_on=1}] run scoreboard players add #number_of_cultists cgame_variable 1
execute as @a[team=cgame_cultist,scores={cgame_on=1}] if score #number_of_cultists cgame_variable matches 1 run effect give @s resistance 255 2 false


#########################################################
## Proximity warnings

execute at @a[team=!cgame_cultist,scores={cgame_on=1}] if score #ctime_TicksInSec ctime_variable matches 0 run playsound minecraft:entity.warden.heartbeat ambient @a[team=cgame_cultist] ~ ~ ~ 2
execute at @a[team=!cgame_cultist,scores={cgame_on=1}] if score #ctime_TicksInSec ctime_variable matches 7 run playsound minecraft:entity.warden.heartbeat ambient @a[team=cgame_cultist] ~ ~ ~ 2

execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_warning_delay=600..}] at @s if entity @a[team=!cgame_cultist,scores={cgame_on=1},distance=..30] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~
execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_warning_delay=600..}] at @s if entity @a[team=!cgame_cultist,scores={cgame_on=1},distance=..30] run tellraw @s [{"text":"A non-clutist player is nearby...","color":"red"}]
execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_warning_delay=600..}] at @s if entity @a[team=!cgame_cultist,scores={cgame_on=1},distance=..30] run scoreboard players set @s cgame_cult_warning_delay 0

scoreboard players add @a[scores={cgame_on=1}] cgame_cult_warning_delay 1


#########################################################
## Beacon: activation

execute as @a[team=cgame_cultist,scores={cgame_on=1}] at @s align xyz positioned ~.5 ~-.5 ~.5 unless entity @e[type=armor_stand,name=cgame_cult_beacon,distance=..0.1] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"cgame_cult_beacon\"",CustomNameVisible:0}
execute as @e[type=armor_stand,name=cgame_cult_beacon] at @s run function cgame:check_beacon


#########################################################
## Beacon: progression to victory

## Natural decay in the absence of beacons
execute if score #cgame_cult_conversion cgame_variable matches 1.. unless entity @e[type=armor_stand,name=cgame_cult_beacon] run scoreboard players remove #cgame_cult_conversion cgame_variable 1

## Progression with beacons (the more beacons the faster)
execute as @e[type=armor_stand,name=cgame_cult_beacon,scores={cgame_cult_beacon_level=1}] run scoreboard players add #cgame_cult_conversion cgame_variable 1
execute as @e[type=armor_stand,name=cgame_cult_beacon,scores={cgame_cult_beacon_level=2}] run scoreboard players add #cgame_cult_conversion cgame_variable 3

## Global conversion --> increase score instead
#execute if score #cgame_cult_conversion cgame_variable matches 6000.. run team join cgame_cultist @a[scores={cgame_on=1}]
#execute if score #cgame_cult_conversion cgame_variable matches 6000.. run scoreboard players set @a[scores={cgame_on=1}] cgame_is_fake_cultist 0

## Score increment
execute if score #cgame_cult_conversion cgame_variable matches 6000.. run scoreboard players set @a[team=cgame_cultist,scores={cgame_on=1,cgame_is_fake_cultist=0}] cgame_score 999999


#########################################################
## Beacon: bossbar

execute if score #cgame_cult_conversion cgame_variable matches ..0 run bossbar remove cgame_cult_conversion

execute if score #cgame_cult_conversion cgame_variable matches 1.. run bossbar add cgame_cult_conversion {"text":"Cultist Victory","color":"dark_green"}
execute if score #cgame_cult_conversion cgame_variable matches 1.. run bossbar set cgame_cult_conversion players @a[scores={cgame_on=1}]
execute if score #cgame_cult_conversion cgame_variable matches 1.. run bossbar set cgame_cult_conversion color green
execute if score #cgame_cult_conversion cgame_variable matches 1.. run bossbar set cgame_cult_conversion max 6000
execute if score #cgame_cult_conversion cgame_variable matches 1.. store result bossbar cgame_cult_conversion value run scoreboard players get #cgame_cult_conversion cgame_variable



