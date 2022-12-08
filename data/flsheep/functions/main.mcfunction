
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Flying Sheep]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function flsheep:menu"}}]

execute if entity @a[scores={flsheep_On=1..}] run function flsheep:main2
