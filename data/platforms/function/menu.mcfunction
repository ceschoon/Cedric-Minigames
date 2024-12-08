tellraw @a [" "]
tellraw @a [{"text":"=== Minigame: Platforms ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Reload]","color":"dark_aqua", "clickEvent":{"action":"run_command","value":"/function platforms:load"}}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:info"}}]
tellraw @a [{"text":"[Toggle rule no fireballs]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:togglerulenofireballs"}}]
tellraw @a [{"text":"[Generate 4 teams map: 6 platforms evenly spaced]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap2"},"hoverEvent":{"action":"show_text","value":{"text":"Map 2"}}}]
tellraw @a [{"text":"[Generate 3 teams map: 6 platforms evenly spaced]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap4"},"hoverEvent":{"action":"show_text","value":{"text":"Map 4"}}}]
tellraw @a [{"text":"[Generate 2 teams map: 6 platforms evenly spaced]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap6"},"hoverEvent":{"action":"show_text","value":{"text":"Map 6"}}}]
tellraw @a [{"text":"[Generate 4 teams map: all resources in the middle]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap5"},"hoverEvent":{"action":"show_text","value":{"text":"Map 5"}}}]
tellraw @a [{"text":"[Generate 3 teams map: all resources in the middle]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap7"},"hoverEvent":{"action":"show_text","value":{"text":"Map 7"}}}]
tellraw @a [{"text":"[Generate 3 teams map: all resources stacked in the middle]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap9"},"hoverEvent":{"action":"show_text","value":{"text":"Map 9"}}}]
tellraw @a [{"text":"[Generate 4 teams map: arranged as a 2v2]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap1"},"hoverEvent":{"action":"show_text","value":{"text":"Map 1"}}}]
tellraw @a [{"text":"[Generate 3 teams map: arranged as a 2v1]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap8"},"hoverEvent":{"action":"show_text","value":{"text":"Map 8"}}}]
tellraw @a [{"text":"[Generate 3 teams map: 3 platforms, unequal resources]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:generatemap3"},"hoverEvent":{"action":"show_text","value":{"text":"Map 3"}}}]
tellraw @a [{"text":"[Start]","color":"green", "clickEvent":{"action":"run_command","value":"/function platforms:start"},"hoverEvent":{"action":"show_text","value":{"text":"Warning: generate map first"}}}]
tellraw @a [{"text":"[Pause/Restart]","color":"dark_green", "clickEvent":{"action":"run_command","value":"/function ctime:togglepause"}}]
tellraw @a [" "]
