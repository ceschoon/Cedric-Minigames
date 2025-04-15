# make it so that sane players get bonuses when grouped together
# but adjust according to number of players in each team

scoreboard players set #numplayers_sane inf_variable 0
execute as @a[team=sane] run scoreboard players add #numplayers_sane inf_variable 1

scoreboard players set #numplayers_inf inf_variable 0
execute as @a[team=infected] run scoreboard players add #numplayers_inf inf_variable 1

execute as @a[team=sane] at @s if entity @a[team=sane,distance=2..10] if score #numplayers_sane inf_variable <= #numplayers_inf inf_variable run effect give @s minecraft:resistance 20 2 false
execute as @a[team=sane] at @s if entity @a[team=sane,distance=2..10] if score #numplayers_sane inf_variable > #numplayers_inf inf_variable run effect give @s minecraft:resistance 20 1 false

execute as @a[team=sane] at @s if score #numplayers_sane inf_variable matches 1 run effect give @s minecraft:resistance 20 2 false
execute as @a[team=infected] at @s if score #shrine_active inf_variable matches 1 if score #numplayers_inf inf_variable matches 1 run effect give @s minecraft:strength 20 1 false
