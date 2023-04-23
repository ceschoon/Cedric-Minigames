tellraw @a [" "]
tellraw @a [{"text":"=== Teams Module ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Reload]","color":"dark_aqua", "clickEvent":{"action":"run_command","value":"/function teams:reload"}}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function teams:info"}}]
tellraw @a [{"text":"[Random teams 1-2]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function teams:dorandomteams2"}}]
tellraw @a [{"text":"[Random teams 1-3]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function teams:dorandomteams3"}}]
tellraw @a [{"text":"[Random teams 1-4]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function teams:dorandomteams4"}}]
tellraw @a [{"text":"[Click to join team 1]","color":"green", "clickEvent":{"action":"run_command","value":"/team join team1 @s"}}]
tellraw @a [{"text":"[Click to join team 2]","color":"red", "clickEvent":{"action":"run_command","value":"/team join team2 @s"}}]
tellraw @a [{"text":"[Click to join team 3]","color":"blue", "clickEvent":{"action":"run_command","value":"/team join team3 @s"}}]
tellraw @a [{"text":"[Click to join team 4]","color":"yellow", "clickEvent":{"action":"run_command","value":"/team join team4 @s"}}]
tellraw @a [{"text":"[Empty all teams]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function teams:empty"}}]
tellraw @a [" "]
