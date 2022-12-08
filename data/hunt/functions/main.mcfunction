
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Manhunt]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function hunt:menu"}}]

execute if entity @a[scores={hunt_On=1..}] run function hunt:main2

