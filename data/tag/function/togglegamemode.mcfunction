
scoreboard players set @a[scores={tag_gamemode=0}] tag_gamemode 10
scoreboard players set @a[scores={tag_gamemode=1}] tag_gamemode 11
scoreboard players set @a[scores={tag_gamemode=10}] tag_gamemode 1
scoreboard players set @a[scores={tag_gamemode=11}] tag_gamemode 0

tellraw @a[scores={tag_gamemode=0}] [{"text":"Tag: Your gamemode is now \"reverse tag\" (Get the tag by killing the tagged player)","color":"gold"}]
tellraw @a[scores={tag_gamemode=1}] [{"text":"Tag: Your gamemode is now \"simple tag\"  (Get rid of the tag by killing any player)","color":"gold"}]

