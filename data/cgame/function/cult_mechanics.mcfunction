

#########################################################
## Bonus effects

# when cultists are grouped together
execute as @a[team=cgame_cultist,scores={cgame_on=1}] at @s if entity @a[team=cgame_cultist,scores={cgame_on=1},distance=1..10] run effect give @s resistance 255 1 false

# or when a cultist is alone...
scoreboard players set #number_of_cultists cgame_variable 0
execute as @a[team=cgame_cultist,scores={cgame_on=1}] run scoreboard players add #number_of_cultists cgame_variable 1
execute as @a[team=cgame_cultist,scores={cgame_on=1}] if score #number_of_cultists cgame_variable matches 1 run effect give @s resistance 255 2 false


#########################################################
## Conversion by potion effect (removed)

#execute as @a[team=cgame_regular,scores={cgame_on=1},nbt={active_effects:[{id:"minecraft:nausea"}]}] run scoreboard players add @s cgame_cult_conversion_delay 2
#scoreboard players remove @a[scores={cgame_on=1,cgame_cult_conversion_delay=1..}] cgame_cult_conversion_delay 1

#title @a[team=cgame_regular,scores={cgame_on=1,cgame_cult_conversion_delay=1..}] actionbar [{"text":"Conversion progress: ","color":"dark_green"},{"score":{"name": "*", "objective": "cgame_cult_conversion_delay"},"color":"dark_green"},{"text":"/600","color":"dark_green"}]

#team join cgame_cultist @a[team=cgame_regular,scores={cgame_on=1,cgame_cult_conversion_delay=600..}]
#title @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_conversion_delay=600..}] title [{"text":"You are now in the cultist team","color":"dark_green"}]

#effect give @a[team=cgame_regular,scores={cgame_cult_conversion_delay=1..}] resistance 1 4
#effect give @a[team=cgame_regular,scores={cgame_cult_conversion_delay=1..}] absorption 1 4
#effect give @a[team=cgame_regular,scores={cgame_cult_conversion_delay=1..}] regeneration 1 4


#########################################################
## Proximity warnings

execute at @a[team=!cgame_cultist,scores={cgame_on=1}] if score #ctime_TicksInSec ctime_variable matches 0 run playsound minecraft:entity.warden.heartbeat ambient @a[team=cgame_cultist] ~ ~ ~ 2
execute at @a[team=!cgame_cultist,scores={cgame_on=1}] if score #ctime_TicksInSec ctime_variable matches 7 run playsound minecraft:entity.warden.heartbeat ambient @a[team=cgame_cultist] ~ ~ ~ 2

execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_warning_delay=600..}] at @s if entity @a[team=!cgame_cultist,scores={cgame_on=1},distance=..30] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~
execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_warning_delay=600..}] at @s if entity @a[team=!cgame_cultist,scores={cgame_on=1},distance=..30] run tellraw @s [{"text":"A non-clutist player is nearby...","color":"red"}]
execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_cult_warning_delay=600..}] at @s if entity @a[team=!cgame_cultist,scores={cgame_on=1},distance=..30] run scoreboard players set @s cgame_cult_warning_delay 0

scoreboard players add @a[scores={cgame_on=1}] cgame_cult_warning_delay 1


#########################################################
## Sacred stone: placement

scoreboard players set #place_sacred_stone cgame_variable 0
execute as @r[team=cgame_cultist,scores={cgame_on=1}] unless entity @e[type=armor_stand,name=cgame_sacred_stone] run scoreboard players set #place_sacred_stone cgame_variable 1

execute if score #place_sacred_stone cgame_variable matches 1 at @e[type=armor_stand,name=cgame_map_center] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"cgame_sacred_stone\"",CustomNameVisible:0}
execute if score #place_sacred_stone cgame_variable matches 1 at @e[type=armor_stand,name=cgame_map_center] run spreadplayers ~ ~ 40 40 false @e[type=armor_stand,name=cgame_sacred_stone]

execute at @e[type=armor_stand,name=cgame_sacred_stone] align xyz run tp @e[type=armor_stand,name=cgame_sacred_stone] ~.5 ~ ~.5


#########################################################
## Sacred stone: blocks to be placed

execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~-1 ~-1.2 ~-1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run setblock ~ ~1.2 ~ air
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~-1 ~-1.2 ~ unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run setblock ~ ~1.2 ~ air
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~-1 ~-1.2 ~1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run setblock ~ ~1.2 ~ air
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~ ~-1.2 ~-1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run setblock ~ ~1.2 ~ air
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~ ~-1.2 ~1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run setblock ~ ~1.2 ~ air
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~1 ~-1.2 ~-1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run setblock ~ ~1.2 ~ air
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~1 ~-1.2 ~ unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run setblock ~ ~1.2 ~ air
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~1 ~-1.2 ~1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run setblock ~ ~1.2 ~ air

execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~-1 ~-1.2 ~-1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"cgame_sacred_stone_blocks\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:emerald_block}]}
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~-1 ~-1.2 ~ unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"cgame_sacred_stone_blocks\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:emerald_block}]}
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~-1 ~-1.2 ~1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"cgame_sacred_stone_blocks\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:emerald_block}]}
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~ ~-1.2 ~-1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"cgame_sacred_stone_blocks\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:emerald_block}]}
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~ ~-1.2 ~1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"cgame_sacred_stone_blocks\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:emerald_block}]}
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~1 ~-1.2 ~-1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"cgame_sacred_stone_blocks\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:emerald_block}]}
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~1 ~-1.2 ~ unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"cgame_sacred_stone_blocks\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:emerald_block}]}
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~1 ~-1.2 ~1 unless entity @e[type=armor_stand,name=cgame_sacred_stone_blocks,distance=..0.1] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"cgame_sacred_stone_blocks\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:emerald_block}]}

scoreboard players set #sacred_stone_missing_blocks cgame_variable 8

execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~-1 ~ ~-1 if block ~ ~ ~ emerald_block run scoreboard players remove #sacred_stone_missing_blocks cgame_variable 1
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~-1 ~ ~ if block ~ ~ ~ emerald_block run scoreboard players remove #sacred_stone_missing_blocks cgame_variable 1
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~-1 ~ ~1 if block ~ ~ ~ emerald_block run scoreboard players remove #sacred_stone_missing_blocks cgame_variable 1
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~ ~ ~-1 if block ~ ~ ~ emerald_block run scoreboard players remove #sacred_stone_missing_blocks cgame_variable 1
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~ ~ ~1 if block ~ ~ ~ emerald_block run scoreboard players remove #sacred_stone_missing_blocks cgame_variable 1
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~1 ~ ~-1 if block ~ ~ ~ emerald_block run scoreboard players remove #sacred_stone_missing_blocks cgame_variable 1
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~1 ~ ~ if block ~ ~ ~ emerald_block run scoreboard players remove #sacred_stone_missing_blocks cgame_variable 1
execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~1 ~ ~1 if block ~ ~ ~ emerald_block run scoreboard players remove #sacred_stone_missing_blocks cgame_variable 1

## Make sure no one places obsidian to block the stone
execute at @e[type=armor_stand,name=cgame_sacred_stone] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace obsidian
execute at @e[type=armor_stand,name=cgame_sacred_stone] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace crying_obsidian

execute at @e[type=armor_stand,name=cgame_sacred_stone] run setblock ~ ~ ~ lodestone
execute at @e[type=armor_stand,name=cgame_sacred_stone] run fill ~ ~1 ~ ~ ~2 ~ air
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] run setblock ~ ~ ~ emerald_block
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] run setblock ~ ~1 ~ beacon
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] run setblock ~ ~2 ~ lime_stained_glass
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] run fill ~ ~3 ~ ~ 319 ~ air


#########################################################
## Sacred stone: villager guardian

execute at @e[type=armor_stand,name=cgame_sacred_stone] if score #sacred_stone_missing_blocks cgame_variable matches 1.. unless entity @e[type=villager,tag=cgame_cult_villager] run summon villager ~ ~1 ~ {Tags:['cgame_cult_villager'],VillagerData:{profession:librarian,level:5,type:savanna},NoAI:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:copper_ingot,count:2},sell:{id:emerald,count:1},xp:1,maxUses:999999},{buy:{id:iron_ingot,count:2},sell:{id:emerald,count:1},xp:1,maxUses:999999},{buy:{id:gold_ingot,count:1},sell:{id:emerald,count:1},xp:1,maxUses:999999}]}}

execute at @e[type=armor_stand,name=cgame_sacred_stone] positioned ~ ~1 ~ run tp @e[type=villager,tag=cgame_cult_villager,distance=0.5..] ~ ~ ~

execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 run tp @e[type=villager,tag=cgame_cult_villager] ~ -999 ~
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 run kill @e[type=villager,tag=cgame_cult_villager]


#########################################################
## Sacred stone: particles/sound/effects
## When blocks are missing

execute if score #sacred_stone_missing_blocks cgame_variable matches 1.. at @e[type=armor_stand,name=cgame_sacred_stone] if score #ctime_TicksInSec ctime_variable matches 0 run playsound minecraft:entity.warden.angry ambient @a ~ ~2 ~ .5

execute if score #sacred_stone_missing_blocks cgame_variable matches 1.. at @e[type=armor_stand,name=cgame_sacred_stone] if predicate cgame:rnd_05 run particle minecraft:angry_villager ~ ~2 ~ 0.4 0.1 0.4 0.01 1 normal

execute if score #sacred_stone_missing_blocks cgame_variable matches 1.. at @e[type=armor_stand,name=cgame_sacred_stone] run effect give @a[team=cgame_cultist,distance=..8] minecraft:darkness 5 0 false
execute if score #sacred_stone_missing_blocks cgame_variable matches 1.. at @e[type=armor_stand,name=cgame_sacred_stone] run effect give @a[team=cgame_cultist,distance=..8] minecraft:slowness 5 0 false


#########################################################
## Sacred stone: particles/sound/effects
## When all blocks are placed

execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] if score #ctime_TicksInSec ctime_variable matches 0 run playsound minecraft:block.beacon.ambient ambient @a ~ ~10 ~ 2
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] if score #ctime_TicksInSec ctime_variable matches 13 run playsound minecraft:block.beacon.activate ambient @a ~ ~10 ~ .5

execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] run particle minecraft:composter ~ ~1 ~ 1.2 0.5 1.2 0.01 5 normal
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] run particle minecraft:composter ~ ~ ~ 4.0 4.0 4.0 0.01 10 normal

execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 run effect clear @a[team=cgame_cultist] minecraft:darkness
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] run effect give @a[team=!cgame_cultist,distance=..8] minecraft:mining_fatigue 5 1 false
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] run effect give @a[team=!cgame_cultist,distance=..8] minecraft:weakness 5 0 false
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 at @e[type=armor_stand,name=cgame_sacred_stone] run effect give @a[team=!cgame_cultist,distance=..8] minecraft:nausea 5 0 false

#execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 if score #ctime_TicksInSec ctime_variable matches 0 at @e[type=armor_stand,name=cgame_sacred_stone] run summon item ~ ~1 ~ {Item:{id:"splash_potion",count:1,components:{potion_contents:{custom_color:65280,custom_effects:[{id:nausea,duration:600}]}}}}
#execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 if score #ctime_TicksInSec ctime_variable matches 10 at @e[type=armor_stand,name=cgame_sacred_stone] run kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}},distance=..2]


#########################################################
## Sacred stone: global conversion

execute if score #sacred_stone_missing_blocks cgame_variable matches 1.. run scoreboard players set #cgame_cult_conversion cgame_variable 0
execute if score #sacred_stone_missing_blocks cgame_variable matches 1.. run bossbar remove cgame_cult_conversion

execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 run scoreboard players add #cgame_cult_conversion cgame_variable 1
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 run bossbar add cgame_cult_conversion {"text":"Cultist Victory","color":"dark_green"}
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 run bossbar set cgame_cult_conversion players @a[scores={cgame_on=1}]
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 run bossbar set cgame_cult_conversion color green
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 run bossbar set cgame_cult_conversion max 6000
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 store result bossbar cgame_cult_conversion value run scoreboard players get #cgame_cult_conversion cgame_variable

execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 if score #cgame_cult_conversion cgame_variable matches 6000.. run team join cgame_cultist @a[scores={cgame_on=1}]
execute if score #sacred_stone_missing_blocks cgame_variable matches ..0 if score #cgame_cult_conversion cgame_variable matches 6000.. run scoreboard players set @a[scores={cgame_on=1}] cgame_is_fake_cultist 0

