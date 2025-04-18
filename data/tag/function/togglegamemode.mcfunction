
execute if score #tag_Gamemode tag_setting matches 0 run scoreboard players set #tag_Gamemode tag_setting 10
execute if score #tag_Gamemode tag_setting matches 1 run scoreboard players set #tag_Gamemode tag_setting 11
execute if score #tag_Gamemode tag_setting matches 10 run scoreboard players set #tag_Gamemode tag_setting 1
execute if score #tag_Gamemode tag_setting matches 11 run scoreboard players set #tag_Gamemode tag_setting 0

execute if score #tag_Gamemode tag_setting matches 0 run tellraw @a [{"text":"Tag: Your gamemode is now \"reverse tag\" (Get the tag by killing the tagged player)","color":"gold"}]
execute if score #tag_Gamemode tag_setting matches 1 run tellraw @a [{"text":"Tag: Your gamemode is now \"simple tag\"  (Get rid of the tag by killing any player)","color":"gold"}]

