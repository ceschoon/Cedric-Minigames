
# display menu (COMMENTED OUT AS THIS IS NOW LEGACY)
#tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Tag]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function tag:menu"}}]

execute if entity @a[scores={tag_On=1..}] run function tag:main

