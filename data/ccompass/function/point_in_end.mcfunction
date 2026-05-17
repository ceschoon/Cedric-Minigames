
execute at @s positioned ~ ~1.6 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..1]
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:compass",count:1,components:{lore:[{text:'Dimension: The End',italic:false},{text:'Put me in a crafting table to change the target',italic:false}]}}}

execute at @s run data merge entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..1,limit=1] {Item:{components:{"minecraft:lodestone_tracker":{target:{dimension:"minecraft:the_end",pos:[I;0,0,0]},tracked:false}}}}
execute at @s store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..1,limit=1] Item.components.minecraft:lodestone_tracker.target.pos[0] int 1 run scoreboard players get @s ccompass_x
execute at @s store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..1,limit=1] Item.components.minecraft:lodestone_tracker.target.pos[1] int 1 run scoreboard players get @s ccompass_y
execute at @s store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..1,limit=1] Item.components.minecraft:lodestone_tracker.target.pos[2] int 1 run scoreboard players get @s ccompass_z

