
execute as @a run function cmagic:processlifecrystals

execute if entity @a[scores={cmagic_barrel_drop_delay=0..}] run function cmagic:processbarreldrops
