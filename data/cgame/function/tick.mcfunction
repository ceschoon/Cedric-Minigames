
# display menu
#tellraw @a[scores={cmenu_show_composer=1}] [{text:'[Minigame composer settings]',color:green,click_event:{action:run_command,command:'/function cgame:menu'}}]
execute as @a[scores={cmenu_show_composer=1}] run function cgame:menu

# armor stands visible if game is off
execute unless entity @a[scores={cgame_on=1..}] as @e[type=armor_stand,name=cgame_hill] run data modify entity @s CustomNameVisible set value true

# armor stands invisible if game is on
execute if entity @a[scores={cgame_on=1..}] as @e[type=armor_stand,name=cgame_hill] run data modify entity @s CustomNameVisible set value false

execute if entity @a[scores={cgame_on=1..}] run function cgame:main

