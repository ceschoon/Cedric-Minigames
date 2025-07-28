tellraw @s [" "]
tellraw @s [{"text":"Select Compass Type: ","color":"gold","bold":false},{"text":" [Player tracker] ","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ccompass_type 1"},"hoverEvent":{"action":"show_text","value":{"text":"Make compasses point toward the nearest player marked as a target"}}},{"text":" [Location tracker] ","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ccompass_type 2"},"hoverEvent":{"action":"show_text","value":{"text":"Make compasses point toward the nearest point of interest on the map"}}}]
tellraw @s [" "]

