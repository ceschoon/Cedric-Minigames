# Detect targeted players in the same dimension

execute as @a[nbt={Dimension:"minecraft:overworld"}] if entity @a[scores={target=1},nbt={Dimension:"minecraft:overworld"}] run function compass:detect
execute as @a[nbt={Dimension:"minecraft:the_nether"}] if entity @a[scores={target=1},nbt={Dimension:"minecraft:the_nether"}] run function compass:detect
execute as @a[nbt={Dimension:"minecraft:the_end"}] if entity @a[scores={target=1},nbt={Dimension:"minecraft:the_end"}] run function compass:detect

# Point to targeted player if there is one
# Note: we can also set the target scoreboard to a higher number in order to use the 
# pointing functions without refreshing the target coordinates using a player's location

execute as @a[scores={drop=1..},nbt={Dimension:"minecraft:overworld"}] if entity @a[scores={target=1..}] run function compass:pointinoverworld
execute as @a[scores={drop=1..},nbt={Dimension:"minecraft:the_nether"}] if entity @a[scores={target=1..}] run function compass:pointinnether
execute as @a[scores={drop=1..},nbt={Dimension:"minecraft:the_end"}] if entity @a[scores={target=1..}] run function compass:pointinend