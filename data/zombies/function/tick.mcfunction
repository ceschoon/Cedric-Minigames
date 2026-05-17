
# display menu
tellraw @a[scores={cmenu_show=1..}] [{text:'[Show menu: Zombie Apocalypse]',color:aqua,click_event:{action:run_command,command:'function zombies:menu'}}]

execute if entity @a[scores={zombies_on=1..}] run function zombies:main

execute at @e[tag=custom_zombie] unless entity @a[distance=..128,scores={zombies_on=1}] run tp @e[tag=custom_zombie,distance=..4] ~ -100 ~
execute at @e[type=spider] unless entity @a[distance=..128,scores={zombies_on=1}] run tp @e[type=spider,distance=..4,nbt={Passengers:[{Tags:['custom_zombie']}]}] ~ -100 ~
