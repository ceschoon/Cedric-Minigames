
# display menu
tellraw @a[scores={cmenu_show=1}] [{"text":"[Minigame composer settings]","color":"green", "clickEvent":{"action":"run_command","value":"/function cgame:menu"}}]

# armor stands visible if game is off
execute unless entity @a[scores={cgame_on=1..}] as @e[type=armor_stand,name=cgame_hill] run data modify entity @s CustomNameVisible set value true

# armor stands invisible if game is on
execute if entity @a[scores={cgame_on=1..}] as @e[type=armor_stand,name=cgame_hill] run data modify entity @s CustomNameVisible set value false

execute if entity @a[scores={cgame_on=1..}] run function cgame:main

