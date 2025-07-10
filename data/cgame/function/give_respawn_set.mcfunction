
give @s bread 5
give @s wind_charge 1

#TODO: give additional items depending on the minigame (e.g. wool if there is a hill)

execute if score #cgame_include_hill cgame_setting matches 1 run give @s red_wool 1

