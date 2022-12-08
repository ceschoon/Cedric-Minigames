
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Infection]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function infection:menu"}}]

execute if entity @a[scores={inf_On=1..}] run function infection:main2

