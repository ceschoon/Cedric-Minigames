
execute as @a at @s run function cmagic:process_life_crystals
execute as @a at @s run function cmagic:process_magical_items

execute if entity @a[scores={cmagic_barrel_drop_delay=0..}] run function cmagic:process_barrel_drops
