
# display menu
tellraw @a[scores={cmenu_show=1}] [{"text":"[Show menu: Kill The Boss]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function boss:menu"}}]

execute if entity @a[scores={boss_On=1..}] run function boss:main2

