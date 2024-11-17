
scoreboard players set @a tag_noboats 1

tellraw @a [{"text":"New rule activated: no boats","color":"gold"}]
tellraw @a [{"text":"[Tag: remove rule no boats]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tagrules:unsetnoboats"},"hoverEvent":{"action":"show_text","value":{"text":"Tag rule: poison effect to players travelling by boat"}}}]

