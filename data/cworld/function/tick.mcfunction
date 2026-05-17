
# display menu
tellraw @a[scores={cmenu_show=1..}] [{text:'[Show menu: World(Border) module]',color:aqua,click_event:{action:run_command,command:'function cworld:menu'}}]

# Storing border size in a variable
execute store result score #cworld_bordersize cworld_variable run worldborder get

# Enforcing maximum border size
execute if score #cworld_bordersize cworld_variable matches 1000001.. run tellraw @a [{text:'WARNING: Worldborder too large, has been resized to 1000000. \nThis is a feature of the Cedric-Minigames datapack.',color:red,bold:false}]
execute if score #cworld_bordersize cworld_variable matches 1000001.. run worldborder set 1000000
