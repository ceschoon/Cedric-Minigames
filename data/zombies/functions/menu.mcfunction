tellraw @a [" "]
tellraw @a [{"text":"=== Zombie Apocalypse ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function zombies:info"}}]
tellraw @a [{"text":"[Reload]","color":"dark_aqua", "clickEvent":{"action":"run_command","value":"/function zombies:reload"}}]
tellraw @a [{"text":"[Switch Difficulty]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function zombies:cycledifficulty"}}]
tellraw @a [{"text":"[Start/Stop]","color":"green", "clickEvent":{"action":"run_command","value":"/function zombies:toggleonoff"}}]
tellraw @a [" "]

