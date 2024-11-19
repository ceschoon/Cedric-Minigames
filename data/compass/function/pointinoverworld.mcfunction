
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:compass",count:1}},distance=..3]
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:compass",count:1,components:{lore:['{"text":"Dimension: Overworld","italic":false}']}}}

execute at @s run data merge entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..3,limit=1] {Item:{components:{"minecraft:lodestone_tracker":{target:{dimension:"minecraft:overworld",pos:[I;0,0,0]},tracked:false}}}}
execute at @s store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..3,limit=1] Item.components.minecraft:lodestone_tracker.target.pos[0] int 1 run scoreboard players get @s X
execute at @s store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..3,limit=1] Item.components.minecraft:lodestone_tracker.target.pos[1] int 1 run scoreboard players get @s Y
execute at @s store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..3,limit=1] Item.components.minecraft:lodestone_tracker.target.pos[2] int 1 run scoreboard players get @s Z

scoreboard players set @s drop 0
