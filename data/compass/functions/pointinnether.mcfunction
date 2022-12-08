# Modified from a function in the huntpack-e1750 datapack

kill @e[type=item,nbt={Item:{id:"minecraft:compass",Count:1b},PickupDelay:40s}]
execute at @a[scores={drop=1..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:compass",Count:1b,tag:{display:{Lore:["\"Dimension: Nether\""]}}}}
execute if entity @a[scores={drop=1..}] run scoreboard players set @a drop 0

data merge entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] {Item:{tag:{LodestoneDimension:"minecraft:the_nether", LodestoneTracked:0b}}}
execute store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.X int 1 run scoreboard players get @s X
execute store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.Y int 1 run scoreboard players get @s Y
execute store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.Z int 1 run scoreboard players get @s Z

