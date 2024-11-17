# Modified from a function in the huntpack-e1750 datapack

execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:compass",Count:1b},PickupDelay:40s},distance=..3]
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:compass",Count:1b,tag:{display:{Lore:["\"Dimension: Overworld\""]}}}}

execute at @s run data merge entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..3,limit=1] {Item:{tag:{LodestoneDimension:"minecraft:overworld", LodestoneTracked:0b}}}
execute at @s store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..3,limit=1] Item.tag.LodestonePos.X int 1 run scoreboard players get @s X
execute at @s store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..3,limit=1] Item.tag.LodestonePos.Y int 1 run scoreboard players get @s Y
execute at @s store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..3,limit=1] Item.tag.LodestonePos.Z int 1 run scoreboard players get @s Z

scoreboard players set @s drop 0
