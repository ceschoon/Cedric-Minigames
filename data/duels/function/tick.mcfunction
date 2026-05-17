
# display menu
tellraw @a[scores={cmenu_show=1..}] [{text:'[Show menu: Duels]',color:aqua,click_event:{action:run_command,command:'/function duels:menu'}}]

execute if entity @a[scores={duels_On=1..}] run function duels:main

