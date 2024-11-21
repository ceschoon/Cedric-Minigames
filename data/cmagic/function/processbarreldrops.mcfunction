
## Barrel drop every 2 minutes (2400 ticks)

scoreboard players set @a[scores={cmagic_barrel_drop_delay=0}] cmagic_barrel_drop_delay 2400
scoreboard players remove @a[scores={cmagic_barrel_drop_delay=1..}] cmagic_barrel_drop_delay 1

execute as @a[scores={cmagic_barrel_drop_delay=100}] run title @s actionbar {"text":"Loot drop incoming in 5", "color":"gold"}
execute as @a[scores={cmagic_barrel_drop_delay=80}] run title @s actionbar {"text":"Loot drop incoming in 4", "color":"gold"}
execute as @a[scores={cmagic_barrel_drop_delay=60}] run title @s actionbar {"text":"Loot drop incoming in 3", "color":"gold"}
execute as @a[scores={cmagic_barrel_drop_delay=40}] run title @s actionbar {"text":"Loot drop incoming in 2", "color":"gold"}
execute as @a[scores={cmagic_barrel_drop_delay=20}] run title @s actionbar {"text":"Loot drop incoming in 1", "color":"gold"}
execute as @a[scores={cmagic_barrel_drop_delay=0}] run title @s actionbar {"text":"Go find it!", "color":"gold"}

kill @e[type=armor_stand,name="barreldrop"]
execute if entity @a[scores={cmagic_barrel_drop_delay=0}] at @r run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"barreldrop\"",CustomNameVisible:0}
execute if entity @a[scores={cmagic_barrel_drop_delay=0}] at @r run spreadplayers ~ ~ 10 10 false @e[type=armor_stand,name="barreldrop"]

execute as @a[scores={cmagic_barrel_drop_delay=0}] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~
execute if entity @a[scores={cmagic_barrel_drop_delay=0}] at @e[type=armor_stand,name="barreldrop"] run summon minecraft:falling_block ~ 220 ~ {BlockState:{Name:"barrel"},TileEntityData:{LootTable:"cmagic:barreldrop"},Time:-9999,NoGravity:0b} 

execute at @e[type=falling_block] run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.01 1


