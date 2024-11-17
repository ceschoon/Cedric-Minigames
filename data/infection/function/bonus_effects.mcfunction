# make it so that sane players get bonuses when grouped together
# but adjust according to number of players in each team

scoreboard players set @a numplayers_sane 0
execute as @a[team=sane] run scoreboard players add @a numplayers_sane 1

scoreboard players set @a numplayers_inf 0
execute as @a[team=infected] run scoreboard players add @a numplayers_inf 1

execute as @a[team=sane] at @s if entity @a[team=sane,distance=2..10] if score @s numplayers_sane <= @s numplayers_inf run effect give @s minecraft:resistance 20 2 false
execute as @a[team=sane] at @s if entity @a[team=sane,distance=2..10] if score @s numplayers_sane > @s numplayers_inf run effect give @s minecraft:resistance 20 1 false

execute as @a[team=sane] at @s if score @s numplayers_sane = @s cconstant_1 run effect give @s minecraft:resistance 20 2 false
execute as @a[team=infected] at @s if entity @a[scores={shrine_active=1}] if score @s numplayers_inf = @s cconstant_1 run effect give @s minecraft:strength 20 1 false
