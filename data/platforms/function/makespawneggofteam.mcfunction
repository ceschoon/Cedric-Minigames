
scoreboard objectives remove pltf_temp
scoreboard objectives add pltf_temp dummy

execute store result score @s pltf_temp run clear @s zombie_spawn_egg[lore=['{"text":"Will not be hostile to you","italic":false}']] 1
execute if entity @s[scores={pltf_temp=1},team=team1] run give @s zombie_spawn_egg[entity_data={id:zombie,Team:team1,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:65280}},count:1}]},lore=['{"text":"Member of the green team","italic":false,"color":green}']]
execute if entity @s[scores={pltf_temp=1},team=team2] run give @s zombie_spawn_egg[entity_data={id:zombie,Team:team2,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:16711680}},count:1}]},lore=['{"text":"Member of the red team","italic":false,"color":red}']]
execute if entity @s[scores={pltf_temp=1},team=team3] run give @s zombie_spawn_egg[entity_data={id:zombie,Team:team3,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:255}},count:1}]},lore=['{"text":"Member of the blue team","italic":false,"color":blue}']]
execute if entity @s[scores={pltf_temp=1},team=team4] run give @s zombie_spawn_egg[entity_data={id:zombie,Team:team4,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:16776960}},count:1}]},lore=['{"text":"Member of the yellow team","italic":false,"color":yellow}']]

execute store result score @s pltf_temp run clear @s skeleton_spawn_egg[lore=['{"text":"Will not be hostile to you","italic":false}']] 1
execute if entity @s[scores={pltf_temp=1},team=team1] run give @s skeleton_spawn_egg[entity_data={id:skeleton,Team:team1,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:65280}},count:1}]},lore=['{"text":"Member of the green team","italic":false,"color":green}']]
execute if entity @s[scores={pltf_temp=1},team=team2] run give @s skeleton_spawn_egg[entity_data={id:skeleton,Team:team2,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:16711680}},count:1}]},lore=['{"text":"Member of the red team","italic":false,"color":red}']]
execute if entity @s[scores={pltf_temp=1},team=team3] run give @s skeleton_spawn_egg[entity_data={id:skeleton,Team:team3,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:255}},count:1}]},lore=['{"text":"Member of the blue team","italic":false,"color":blue}']]
execute if entity @s[scores={pltf_temp=1},team=team4] run give @s skeleton_spawn_egg[entity_data={id:skeleton,Team:team4,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:16776960}},count:1}]},lore=['{"text":"Member of the yellow team","italic":false,"color":yellow}']]

execute store result score @s pltf_temp run clear @s pillager_spawn_egg[lore=['{"text":"Will not be hostile to you","italic":false}']] 1
execute if entity @s[scores={pltf_temp=1},team=team1] run give @s pillager_spawn_egg[entity_data={id:pillager,Team:team1,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:65280}},count:1}]},lore=['{"text":"Member of the green team","italic":false,"color":green}']]
execute if entity @s[scores={pltf_temp=1},team=team2] run give @s pillager_spawn_egg[entity_data={id:pillager,Team:team2,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:16711680}},count:1}]},lore=['{"text":"Member of the red team","italic":false,"color":red}']]
execute if entity @s[scores={pltf_temp=1},team=team3] run give @s pillager_spawn_egg[entity_data={id:pillager,Team:team3,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:255}},count:1}]},lore=['{"text":"Member of the blue team","italic":false,"color":blue}']]
execute if entity @s[scores={pltf_temp=1},team=team4] run give @s pillager_spawn_egg[entity_data={id:pillager,Team:team4,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,components:{"dyed_color":{rgb:16776960}},count:1}]},lore=['{"text":"Member of the yellow team","italic":false,"color":yellow}']]

