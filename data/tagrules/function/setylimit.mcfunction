
scoreboard players set @a tag_ylimit 1

tellraw @a [{"text":"New rule activated: ylimit (adventure mode above y=90)","color":"gold"}]
tellraw @a [{"text":"[Tag: remove rule y limit]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tagrules:unsetylimit"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: adventure mode above y=90"}}}]
