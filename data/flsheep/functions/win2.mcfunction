#team 2 win actions

scoreboard players set @a flsheep_On 0

title @a title [{"text":"Red team won the game!","color":"red"}]
tellraw @a [{"text":"Red team won the game!","color":"red"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
