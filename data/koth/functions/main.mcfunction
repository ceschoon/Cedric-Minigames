
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: King of the Hill]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function koth:menu"}}]

execute if entity @a[scores={koth_On=1..}] run function koth:main2

