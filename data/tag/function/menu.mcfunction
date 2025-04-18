tellraw @a [" "]
tellraw @a [{"text":"=== Minigame: Tag ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Reload]","color":"dark_aqua", "clickEvent":{"action":"run_command","value":"/function tag:load"}}]
tellraw @a [{"text":"[Info]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tag:info"}}]

tellraw @a [{"text":"[Toggle gamemode]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tag:togglegamemode"},"hoverEvent":{"action":"show_text","value":{"text":"Change the game objective: keep the tag as long as possible or get rid of it"}}}]
tellraw @a [{"text":"[Enable/Disable barrel drops]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cmagic:togglebarreldrops"}}]

tellraw @a [{"text":"[Set preparation time to  0 min]","color":"aqua", "clickEvent":{"action":"run_command","value":"/scoreboard players set #tag_PrepTime tag_setting 0"},"hoverEvent":{"action":"show_text","value":{"text":"Give the players time to collect resources before the score increase"}}}]
tellraw @a [{"text":"[Set preparation time to  5 min]","color":"aqua", "clickEvent":{"action":"run_command","value":"/scoreboard players set #tag_PrepTime tag_setting 300"},"hoverEvent":{"action":"show_text","value":{"text":"Give the players time to collect resources before the score increase"}}}]
tellraw @a [{"text":"[Set preparation time to 10 min]","color":"aqua", "clickEvent":{"action":"run_command","value":"/scoreboard players set #tag_PrepTime tag_setting 600"},"hoverEvent":{"action":"show_text","value":{"text":"Give the players time to collect resources before the score increase"}}}]
tellraw @a [{"text":"[Set preparation time to 15 min]","color":"aqua", "clickEvent":{"action":"run_command","value":"/scoreboard players set #tag_PrepTime tag_setting 900"},"hoverEvent":{"action":"show_text","value":{"text":"Give the players time to collect resources before the score increase"}}}]
tellraw @a [{"text":"[Set preparation time to 20 min]","color":"aqua", "clickEvent":{"action":"run_command","value":"/scoreboard players set #tag_PrepTime tag_setting 1200"},"hoverEvent":{"action":"show_text","value":{"text":"Give the players time to collect resources before the score increase"}}}]

tellraw @a [{"text":"[Start basic]","color":"green", "clickEvent":{"action":"run_command","value":"/function tag:startbasic"},"hoverEvent":{"action":"show_text","value":{"text":"No modification of map or player inventory/effects"}}}]
tellraw @a [{"text":"[Start normal]","color":"green", "clickEvent":{"action":"run_command","value":"/function tag:startnormal"},"hoverEvent":{"action":"show_text","value":{"text":"Normal map 300x300 blocks"}}}]
tellraw @a [{"text":"[Start mini]","color":"green", "clickEvent":{"action":"run_command","value":"/function tag:startmini"},"hoverEvent":{"action":"show_text","value":{"text":"Extra small map and one puch kill"}}}]
tellraw @a [{"text":"[Pause/Restart]","color":"dark_green", "clickEvent":{"action":"run_command","value":"/function ctime:togglepause"}}]
tellraw @a [" "]

