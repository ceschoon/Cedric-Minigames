
execute if score #cmagic_barrel_drop_delay cmagic_variable matches ..-1 run scoreboard players set #cmagic_barrel_drop_delay cmagic_variable -2
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 0.. run scoreboard players set #cmagic_barrel_drop_delay cmagic_variable -1
execute if score #cmagic_barrel_drop_delay cmagic_variable matches -2 run scoreboard players set #cmagic_barrel_drop_delay cmagic_variable 100

execute if score #cmagic_barrel_drop_delay cmagic_variable matches -1 run tellraw @a [{"text":"Barrel drops deactivated!","color":"gold"}]
execute if score #cmagic_barrel_drop_delay cmagic_variable matches 100 run tellraw @a [{"text":"Barrel drops activated!","color":"gold"}]

