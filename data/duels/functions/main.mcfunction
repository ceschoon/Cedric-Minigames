
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Duels]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function duels:menu"}}]

execute if entity @a[scores={duels_On=1..}] run function duels:main2

