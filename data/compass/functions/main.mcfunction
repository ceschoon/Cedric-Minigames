
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Compass module]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function compass:menu"}}]

# Detect targeted players in the same dimension

execute as @a[nbt={Dimension:"minecraft:overworld"}] if entity @a[scores={target=1},nbt={Dimension:"minecraft:overworld"}] run function compass:detect
execute as @a[nbt={Dimension:"minecraft:the_nether"}] if entity @a[scores={target=1},nbt={Dimension:"minecraft:the_nether"}] run function compass:detect
execute as @a[nbt={Dimension:"minecraft:the_end"}] if entity @a[scores={target=1},nbt={Dimension:"minecraft:the_end"}] run function compass:detect

# Point to targeted player if there is one
# Note: we can also set the target scoreboard to a higher number in order to use the 
# pointing functions without refreshing the target coordinates using a player's location

execute as @a[nbt={Dimension:"minecraft:overworld"}] if entity @a[scores={target=1..}] run function compass:pointinoverworld
execute as @a[nbt={Dimension:"minecraft:the_nether"}] if entity @a[scores={target=1..}] run function compass:pointinnether
execute as @a[nbt={Dimension:"minecraft:the_end"}] if entity @a[scores={target=1..}] run function compass:pointinend

# Detect if the player is in a dimension with a roof (used to spreadplayers)

scoreboard players set @a[nbt={Dimension:"minecraft:overworld"}] dimroof 0
scoreboard players set @a[nbt={Dimension:"minecraft:the_nether"}] dimroof 1
scoreboard players set @a[nbt={Dimension:"minecraft:the_end"}] dimroof 0


