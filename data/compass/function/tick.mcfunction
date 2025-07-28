
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Compass module (legacy)]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function compass:menu"}}]

execute if score #compass_active compass_setting matches 1 run function compass:main

# Detect if the player is in a dimension with a roof (used to spreadplayers)
# TODO: GET RID OF THIS (will be removed in a future update)

scoreboard players set @a[nbt={Dimension:"minecraft:overworld"}] dimroof 0
scoreboard players set @a[nbt={Dimension:"minecraft:the_nether"}] dimroof 1
scoreboard players set @a[nbt={Dimension:"minecraft:the_end"}] dimroof 0

