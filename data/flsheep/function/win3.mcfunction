#team 3 win actions

scoreboard players set @a flsheep_On 0

title @a title [{"text":"Blue team won the game!","color":"blue"}]
tellraw @a [{"text":"Blue team won the game!","color":"blue"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~
