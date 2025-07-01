
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Minigame composer settings]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cgame:menu"}}]

execute if entity @a[scores={cgame_on=1..}] run function cgame:main

