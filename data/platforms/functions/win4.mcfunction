#team 4 win actions

scoreboard players set @a pltf_On 0

title @a title [{"text":"Yellow team won the game!","color":"yellow"}]
tellraw @a [{"text":"Yellow team won the game!","color":"yellow"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
