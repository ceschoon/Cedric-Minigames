
######################################################
## Read current map size

execute store result score #cgame_current_map_size cgame_temp run worldborder get


######################################################
## Shrink to 100x100 at a reasonable pace
## Not intended for map sizes above 500x500

execute if score #cgame_current_map_size cgame_temp matches 101..200 run worldborder set 100 400s
execute if score #cgame_current_map_size cgame_temp matches 201..300 run worldborder set 100 800s
execute if score #cgame_current_map_size cgame_temp matches 301..400 run worldborder set 100 1200s
execute if score #cgame_current_map_size cgame_temp matches 401..500 run worldborder set 100 1600s
execute if score #cgame_current_map_size cgame_temp matches 501.. run worldborder set 100 2000s

