
## Barrel drop every 2 minutes (2400 ticks)

execute if score #cmagic_barrel_drop_delay cmagic_variable matches 0 run scoreboard players set #cmagic_barrel_drop_delay cmagic_variable 2400
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 0.. run scoreboard players remove #cmagic_barrel_drop_delay cmagic_variable 1

execute if score #cmagic_barrel_drop_delay cmagic_variable matches 100 run title @a actionbar {text:'Loot drop incoming in 5',color:gold}
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 80 run title @a actionbar {text:'Loot drop incoming in 4',color:gold}
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 60 run title @a actionbar {text:'Loot drop incoming in 3',color:gold}
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 40 run title @a actionbar {text:'Loot drop incoming in 2',color:gold}
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 20 run title @a actionbar {text:'Loot drop incoming in 1',color:gold}
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 0 run title @a actionbar {text:'Go find it!',color:gold}

execute if score #cmagic_barrel_drop_delay cmagic_variable matches 0 run kill @e[type=armor_stand,name="barreldrop"]
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 0 as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 0 at @r run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,CustomName:"barreldrop",CustomNameVisible:0b}
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 0 as @e[type=armor_stand,name="barreldrop"] at @s run spreadplayers ~ ~ 50 50 false @s
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 0 at @e[type=armor_stand,name="barreldrop"] run summon minecraft:falling_block ~ 220 ~ {BlockState:{Name:"barrel"},TileEntityData:{LootTable:"cmagic:barrel_drop"},Time:-9999,NoGravity:0b}



###### Should only target the falling barrel, not any block !! ######
execute at @e[type=falling_block] run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.01 1

## Sometimes if falls on grass and lands below the armor stand
execute as @e[type=armor_stand,name="barreldrop"] at @s if block ~ ~-1 ~ barrel run tp @s ~ ~-1 ~
execute as @e[type=armor_stand,name="barreldrop"] at @s if block ~ ~-2 ~ barrel run tp @s ~ ~-2 ~

execute at @e[type=armor_stand,name="barreldrop"] if block ~ ~ ~ barrel[open=false] unless entity @e[type=armor_stand,name="barrelunopened",distance=..3] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,CustomName:"barrelunopened",CustomNameVisible:0b}
execute at @e[type=armor_stand,name="barreldrop"] if block ~ ~ ~ barrel[open=true] unless entity @e[type=armor_stand,name="barrelopened",distance=..3] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,CustomName:"barrelopened",CustomNameVisible:0b}
execute as @e[type=armor_stand,name="barreldrop"] at @s if block ~ ~ ~ barrel[open=true] run kill @s
execute as @e[type=armor_stand,name="barrelunopened"] at @s unless block ~ ~ ~ barrel[open=false] run kill @s

execute at @e[type=armor_stand,name="barrelunopened"] run particle minecraft:crit ~ ~ ~ 1.0 2.0 1.0 0.01 2
execute at @e[type=armor_stand,name="barrelunopened"] if score #ctime_TicksInSec ctime_variable matches 0 run playsound minecraft:block.amethyst_block.step ambient @a ~ ~ ~ 2.0
execute at @e[type=armor_stand,name="barrelunopened"] if score #ctime_TicksInSec ctime_variable matches 4 run playsound minecraft:block.amethyst_block.resonate ambient @a ~ ~ ~ 2.0
execute at @e[type=armor_stand,name="barrelunopened"] if score #ctime_TicksInSec ctime_variable matches 10 run playsound minecraft:block.amethyst_block.step ambient @a ~ ~ ~ 2.0
execute at @e[type=armor_stand,name="barrelunopened"] if score #ctime_TicksInSec ctime_variable matches 14 run playsound minecraft:block.amethyst_block.resonate ambient @a ~ ~ ~ 2.0


## Delete the barrels after 5 minutes (6000 ticks)

scoreboard players add @e[type=armor_stand,name="barrelunopened"] cmagic_barrel_age 1
scoreboard players add @e[type=armor_stand,name="barrelopened"] cmagic_barrel_age 1

execute at @e[type=armor_stand,name="barrelunopened",scores={cmagic_barrel_age=6000..}] run setblock ~ ~ ~ air replace
execute at @e[type=armor_stand,name="barrelopened",scores={cmagic_barrel_age=6000..}] run setblock ~ ~ ~ air replace

execute at @e[type=armor_stand,name="barrelunopened",scores={cmagic_barrel_age=6000..}] run kill @e[type=item,distance=..1]
kill @e[type=armor_stand,name="barrelunopened",scores={cmagic_barrel_age=6000..}]
kill @e[type=armor_stand,name="barrelopened",scores={cmagic_barrel_age=6000..}]

