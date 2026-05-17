
# display menu
tellraw @a[scores={cmenu_show=1..}] [{text:'[Show menu: Platforms]',color:aqua,click_event:{action:run_command,command:'/function platforms:menu'}},{text:' ✰ ',color:gold}]

execute if entity @a[scores={pltf_On=1}] run function platforms:main

