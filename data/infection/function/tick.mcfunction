
# display menu
tellraw @a[scores={cmenu_show=1..}] [{text:'[Show menu: Infection (legacy)]',color:aqua,click_event:{action:run_command,command:'/function infection:menu'}},{text:' ✰ ',color:gold}]

execute if entity @a[scores={inf_On=1..}] run function infection:main

