tellraw @a [" "]
tellraw @a [{"text":"=== Minigame: Tag ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tag:info"}}]
tellraw @a [{"text":"[Reload]","color":"dark_aqua", "clickEvent":{"action":"run_command","value":"/function tag:reload"}}]

tellraw @a [{"text":"[Toggle gamemode]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tag:togglegamemode"},"hoverEvent":{"action":"show_text","value":{"text":"Change the game objective: keep the tag as long as possible or get rid of it"}}}]
tellraw @a [{"text":"[Enable/Disable kill rewards]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tag:togglekillrewards"}}]

## legacy
#tellraw @a [{"text":"[Add rule no boats]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tagrules:setnoboats"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: poison effect to players travelling by boat"}}}]
#tellraw @a [{"text":"[Add rule no tunnels]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tagrules:setnotunnels"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: poison effect to players in 1 by 1 tunnels"}}}]
#tellraw @a [{"text":"[Add rule y limit]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tagrules:setylimit"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: adventure mode above y=90"}}}]

tellraw @a [{"text":"[Start basic]","color":"green", "clickEvent":{"action":"run_command","value":"/function tag:startbasic"},"hoverEvent":{"action":"show_text","value":{"text":"No modification of map or player inventory/effects"}}}]
tellraw @a [{"text":"[Start normal]","color":"green", "clickEvent":{"action":"run_command","value":"/function tag:startnormal"},"hoverEvent":{"action":"show_text","value":{"text":"Normal map 400x400"}}}]
tellraw @a [{"text":"[Start mini]","color":"green", "clickEvent":{"action":"run_command","value":"/function tag:startmini"},"hoverEvent":{"action":"show_text","value":{"text":"Extra small map and one puch kill"}}}]
tellraw @a [{"text":"[Pause/Restart]","color":"dark_green", "clickEvent":{"action":"run_command","value":"/function ctime:togglepause"}}]
tellraw @a [" "]

