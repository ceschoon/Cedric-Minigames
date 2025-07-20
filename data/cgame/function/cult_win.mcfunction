
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s

title @a[scores={cgame_on=1}] title [{"text":"The cultists won the game!","color":"dark_green"}]
tellraw @a[scores={cgame_on=1}] [{"text":"The cultists won the game!","color":"dark_green"}]

scoreboard players set #ctime_Pause ctime_variable 1
scoreboard players set #cmagic_barrel_drop_delay cmagic_variable -1
scoreboard players set @a cgame_on 0
