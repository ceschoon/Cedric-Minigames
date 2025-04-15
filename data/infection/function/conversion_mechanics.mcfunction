execute if score #ctime_TicksInSec ctime_variable matches 0 unless entity @s[team=infected,nbt={active_effects:[{id:"minecraft:luck"}]}] run scoreboard players add @s inf_HealDelay 1
execute if score #ctime_TicksInSec ctime_variable matches 0 if entity @s[team=infected,nbt={active_effects:[{id:"minecraft:luck"}]}] run scoreboard players remove @s inf_HealDelay 1

scoreboard players set @s[scores={inf_HealDelay=31..}] inf_HealDelay 31
team join sane @s[team=infected,scores={inf_HealDelay=..-1}]

effect give @s[team=infected,scores={inf_HealDelay=..30}] resistance 1 4
effect give @s[team=infected,scores={inf_HealDelay=..30}] absorption 1 4
effect give @s[team=infected,scores={inf_HealDelay=..30}] regeneration 1 4

execute if score #ctime_TicksInSec ctime_variable matches 0 run effect give @s[team=infected,scores={inf_HealDelay=10}] nausea 15

execute if score #ctime_TicksInSec ctime_variable matches 0 run title @s[team=infected,scores={inf_HealDelay=30}] title [{"text":"Hit!","color":"red"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 run title @s[team=infected,scores={inf_HealDelay=30}] subtitle [{"text":"Hit! You will be healed in 30 seconds","color":"red"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 run title @s[team=infected,scores={inf_HealDelay=20}] title [{"text":"20 seconds ...","color":"red"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 run title @s[team=infected,scores={inf_HealDelay=10}] title [{"text":"10 seconds ...","color":"red"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 run title @s[team=sane,scores={inf_HealDelay=-1}] title [{"text":"Healed!","color":"green"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 run title @s[team=sane,scores={inf_HealDelay=-1}] subtitle [{"text":"You are now in the sane team","color":"green"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 run tellraw @s[team=sane,scores={inf_HealDelay=-1}] [{"text":"Healed! You are now in the sane team","color":"green"}]


