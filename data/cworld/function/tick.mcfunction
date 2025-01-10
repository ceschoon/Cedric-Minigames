
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: World(Border) module]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function cworld:menu"}}]

# Storing border size in a variable
execute store result score @a cworld_bordersize run worldborder get

# Enforcing maximum border size
execute if entity @a[scores={cworld_bordersize=10001..}] run tellraw @a [{"text":"WARNING: Worldborder too large, has been resized to 10000. \nThis is a feature of the Cedric-Minigames datapack.","color":"red","bold":false}]
execute if entity @a[scores={cworld_bordersize=10001..}] run worldborder set 10000
