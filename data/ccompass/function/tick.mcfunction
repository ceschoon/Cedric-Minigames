
# display menu
tellraw @a[scores={cmenu_show=1}] [{text:'[Show menu: Compass module]',color:aqua,click_event:{action:run_command,command:'/function ccompass:menu'}}]

execute if score #ccompass_active ccompass_setting matches 1 run function ccompass:main


