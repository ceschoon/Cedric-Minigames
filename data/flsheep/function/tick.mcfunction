
# display menu
tellraw @a[scores={cmenu_show=1..}] [{text:'[Show menu: Flying Sheep]',color:aqua,click_event:{action:run_command,command:'/function flsheep:menu'}}]

execute if entity @a[scores={flsheep_On=1..}] run function flsheep:main
