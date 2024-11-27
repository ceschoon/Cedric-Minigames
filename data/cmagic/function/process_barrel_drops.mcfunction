
## Barrel drop every 2 minutes (2400 ticks)

scoreboard players set @a[scores={cmagic_barrel_drop_delay=0}] cmagic_barrel_drop_delay 2400
scoreboard players remove @a[scores={cmagic_barrel_drop_delay=1..}] cmagic_barrel_drop_delay 1

execute as @a[scores={cmagic_barrel_drop_delay=100}] run title @s actionbar {"text":"Loot drop incoming in 5", "color":"gold"}
execute as @a[scores={cmagic_barrel_drop_delay=80}] run title @s actionbar {"text":"Loot drop incoming in 4", "color":"gold"}
execute as @a[scores={cmagic_barrel_drop_delay=60}] run title @s actionbar {"text":"Loot drop incoming in 3", "color":"gold"}
execute as @a[scores={cmagic_barrel_drop_delay=40}] run title @s actionbar {"text":"Loot drop incoming in 2", "color":"gold"}
execute as @a[scores={cmagic_barrel_drop_delay=20}] run title @s actionbar {"text":"Loot drop incoming in 1", "color":"gold"}
execute as @a[scores={cmagic_barrel_drop_delay=0}] run title @s actionbar {"text":"Go find it!", "color":"gold"}

execute if entity @a[scores={cmagic_barrel_drop_delay=0}] run kill @e[type=armor_stand,name="barreldrop"]
execute if entity @a[scores={cmagic_barrel_drop_delay=0}] as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~
execute if entity @a[scores={cmagic_barrel_drop_delay=0}] at @r run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"barreldrop\"",CustomNameVisible:0}
execute if entity @a[scores={cmagic_barrel_drop_delay=0}] as @e[type=armor_stand,name="barreldrop"] at @s run spreadplayers ~ ~ 50 50 false @s
execute if entity @a[scores={cmagic_barrel_drop_delay=0}] at @e[type=armor_stand,name="barreldrop"] run summon minecraft:falling_block ~ 220 ~ {BlockState:{Name:"barrel"},TileEntityData:{LootTable:"cmagic:barrel_drop"},Time:-9999,NoGravity:0b}



###### Should only target the falling barrel, not any block !! ######
execute at @e[type=falling_block] run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.01 1

## Sometimes if falls on grass and lands below the armor stand
execute as @e[type=armor_stand,name="barreldrop"] at @s if block ~ ~-1 ~ barrel run tp @s ~ ~-1 ~
execute as @e[type=armor_stand,name="barreldrop"] at @s if block ~ ~-2 ~ barrel run tp @s ~ ~-2 ~

execute at @e[type=armor_stand,name="barreldrop"] if block ~ ~ ~ barrel unless entity @e[type=armor_stand,name="barrelunopened",distance=..3] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"barrelunopened\"",CustomNameVisible:0}
execute as @e[type=armor_stand,name="barreldrop"] at @s if block ~ ~ ~ barrel[open=true] run kill @s
execute as @e[type=armor_stand,name="barrelunopened"] at @s unless block ~ ~ ~ barrel[open=false] run kill @s

execute at @e[type=armor_stand,name="barrelunopened"] run particle minecraft:crit ~ ~ ~ 1.0 2.0 1.0 0.01 2
execute at @e[type=armor_stand,name="barrelunopened"] if entity @p[scores={ctime_TicksInSec=0}] run playsound minecraft:block.amethyst_block.step ambient @a ~ ~ ~ 2.0
execute at @e[type=armor_stand,name="barrelunopened"] if entity @p[scores={ctime_TicksInSec=4}] run playsound minecraft:block.amethyst_block.resonate ambient @a ~ ~ ~ 2.0
execute at @e[type=armor_stand,name="barrelunopened"] if entity @p[scores={ctime_TicksInSec=10}] run playsound minecraft:block.amethyst_block.step ambient @a ~ ~ ~ 2.0
execute at @e[type=armor_stand,name="barrelunopened"] if entity @p[scores={ctime_TicksInSec=14}] run playsound minecraft:block.amethyst_block.resonate ambient @a ~ ~ ~ 2.0
