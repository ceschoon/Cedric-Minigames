execute as @a at @s run playsound minecraft:entity.ghast.hurt master @s
tellraw @a [{selector:'@s',color:red},{text:' was a mole the whole time!!',color:red}]
team join cgame_regular @s
effect give @s absorption infinite 1 false
scoreboard players set @s cgame_is_fake_cultist 0
