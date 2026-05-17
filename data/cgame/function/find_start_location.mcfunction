
scoreboard players set #found_start_location cgame_variable 0

execute if score #found_start_location cgame_variable matches 0 store success score #found_start_location cgame_variable run spreadplayers ~ ~ 1 1 false @s
execute if score #found_start_location cgame_variable matches 0 store success score #found_start_location cgame_variable run spreadplayers ~ ~ 3 3 false @s
execute if score #found_start_location cgame_variable matches 0 store success score #found_start_location cgame_variable run spreadplayers ~ ~ 5 5 false @s
execute if score #found_start_location cgame_variable matches 0 store success score #found_start_location cgame_variable run spreadplayers ~ ~ 10 10 false @s
execute if score #found_start_location cgame_variable matches 0 store success score #found_start_location cgame_variable run spreadplayers ~ ~ 30 30 false @s
execute if score #found_start_location cgame_variable matches 0 store success score #found_start_location cgame_variable run spreadplayers ~ ~ 50 50 false @s
execute if score #found_start_location cgame_variable matches 0 store success score #found_start_location cgame_variable run spreadplayers ~ ~ 100 100 false @s
execute if score #found_start_location cgame_variable matches 0 store success score #found_start_location cgame_variable run spreadplayers ~ ~ 300 300 false @s
execute if score #found_start_location cgame_variable matches 0 store success score #found_start_location cgame_variable run spreadplayers ~ ~ 500 500 false @s

execute if score #found_start_location cgame_variable matches 0 run tellraw @s [{text:'ERROR: Not a suitable location to start a game.',color:red}]
