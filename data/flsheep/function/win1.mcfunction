#team 1 win actions

scoreboard players set @a flsheep_On 0

title @a title [{"text":"Green team won the game!","color":"green"}]
tellraw @a [{"text":"Green team won the game!","color":"green"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
