tellraw @a [" "]
tellraw @a [{"text":"=== Minigame Composer ===","color":"gold","bold":true}]

## TODO: write a minecraft book with detailed informations
##tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:info"}}]

tellraw @a [" "]
tellraw @a [{"text":"Step 1: Reset everything ","color":"gold"}]
tellraw @a [{"text":"[Reload]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:reload_dependencies"}}]

tellraw @a [" "]
tellraw @a [{"text":"Step 2: Select a game preset","color":"gold"}]
tellraw @a [{"text":"[Preset: normal tag]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:presets/tag_normal"},"hoverEvent":{"action":"show_text","value":{"text":"Tag game on a 300x300 map"}}}]
tellraw @a [{"text":"[Preset: mini tag]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:presets/tag_mini"},"hoverEvent":{"action":"show_text","value":{"text":"Tag game on a 100x100 map with infinite strength"}}}]
tellraw @a [{"text":"[Preset: cursed tag]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:presets/tag_cursed"},"hoverEvent":{"action":"show_text","value":{"text":"The goal is to get rid of the tag"}}}]
tellraw @a [{"text":"[Preset: kill the boss]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:presets/boss"},"hoverEvent":{"action":"show_text","value":{"text":"Kill a player with randomly selected advantages"}}}]
tellraw @a [{"text":"[Preset: battleroyale]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:presets/battleroyale"},"hoverEvent":{"action":"show_text","value":{"text":"Kill other players to score"}}}]
tellraw @a [{"text":"[Preset: light the beacons]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:presets/cult"},"hoverEvent":{"action":"show_text","value":{"text":"The goal is for the cultist to bring riches to the sacred stone and convert everyone. The others must stop them."}}}]
tellraw @a [{"text":"[Preset: king of the hill]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:presets/king_of_the_hill"},"hoverEvent":{"action":"show_text","value":{"text":"Stay on the hill for as long as possible"}}}]

tellraw @a [" "]
tellraw @a [{"text":"Step 3: Tweak the settings (Optional)","color":"gold"}]
tellraw @a [{"text":"[Click to show]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:display_options"}}]

tellraw @a [" "]
tellraw @a [{"text":"Step 4: Start the game","color":"gold"}]
tellraw @a [{"text":"[Start]","color":"green", "clickEvent":{"action":"run_command","value":"/function cgame:start"},"hoverEvent":{"action":"show_text","value":{"text":"Launch the game with the current settings"}}}]

tellraw @a [{"text":"[Pause/Restart]","color":"dark_green", "clickEvent":{"action":"run_command","value":"/function ctime:togglepause"}}]
tellraw @a [" "]

