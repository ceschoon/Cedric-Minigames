
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Platforms]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function platforms:menu"}}]

execute if entity @a[scores={pltf_On=1}] run function platforms:main2

