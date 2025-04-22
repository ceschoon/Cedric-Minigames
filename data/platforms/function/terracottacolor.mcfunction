
execute store result score #temp pltf_variable run clear @s white_terracotta 1
execute if score #temp pltf_variable matches 1 if entity @s[team=team1] run give @s lime_terracotta 1
execute if score #temp pltf_variable matches 1 if entity @s[team=team2] run give @s red_terracotta 1
execute if score #temp pltf_variable matches 1 if entity @s[team=team3] run give @s blue_terracotta 1
execute if score #temp pltf_variable matches 1 if entity @s[team=team4] run give @s yellow_terracotta 1

