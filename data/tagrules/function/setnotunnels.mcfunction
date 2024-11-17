
scoreboard players set @a tag_notunnels 1

tellraw @a [{"text":"New rule activated: no tunnels (no 1x1 tunnels)","color":"gold"}]
tellraw @a [{"text":"[Tag: remove rule no tunnels]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tagrules:unsetnotunnels"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: poison effect to players in 1 by 1 tunnels"}}}]
