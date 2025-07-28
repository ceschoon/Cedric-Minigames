


## Detect ccompass_targeted players in the same dimension

execute as @a run function ccompass:detect

## Point to target player/entity

execute as @a[scores={ccompass_dropped=1..},nbt={Dimension:"minecraft:overworld"}] run function ccompass:point_in_overworld
execute as @a[scores={ccompass_dropped=1..},nbt={Dimension:"minecraft:the_nether"}] run function ccompass:point_in_nether
execute as @a[scores={ccompass_dropped=1..},nbt={Dimension:"minecraft:the_end"}] run function ccompass:point_in_end

## Show menu to select the compass type every time a new one is crafted

execute as @a[scores={ccompass_crafted=1..}] run function ccompass:select_type

## Reset scoreboards

scoreboard players set @a[scores={ccompass_dropped=1..}] ccompass_dropped 0
scoreboard players set @a[scores={ccompass_crafted=1..}] ccompass_crafted 0
#scoreboard players set @a[scores={ccompass_type=..0}] ccompass_type 1
#scoreboard players set @a[scores={ccompass_type=3..}] ccompass_type 2

