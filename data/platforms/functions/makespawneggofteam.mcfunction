
scoreboard objectives remove pltf_temp
scoreboard objectives add pltf_temp dummy

execute store result score @s pltf_temp run clear @s zombie_spawn_egg{display:{Lore:['[{"text":"Will not be hostile to you","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team1] run give @s zombie_spawn_egg{EntityTag:{id:zombie,Team:team1,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,tag:{display:{color:65280}},Count:1}]},display:{Lore:['[{"text":"Member of the green team","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team2] run give @s zombie_spawn_egg{EntityTag:{id:zombie,Team:team2,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,tag:{display:{color:16711680}},Count:1}]},display:{Lore:['[{"text":"Member of the red team","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team3] run give @s zombie_spawn_egg{EntityTag:{id:zombie,Team:team3,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,tag:{display:{color:255}},Count:1}]},display:{Lore:['[{"text":"Member of the blue team","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team4] run give @s zombie_spawn_egg{EntityTag:{id:zombie,Team:team4,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,tag:{display:{color:16776960}},Count:1}]},display:{Lore:['[{"text":"Member of the yellow team","italic":false}]']}} 1

execute store result score @s pltf_temp run clear @s skeleton_spawn_egg{display:{Lore:['[{"text":"Will not be hostile to you","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team1] run give @s skeleton_spawn_egg{EntityTag:{id:skeleton,Team:team1,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,tag:{display:{color:65280}},Count:1}]},display:{Lore:['[{"text":"Member of the green team","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team2] run give @s skeleton_spawn_egg{EntityTag:{id:skeleton,Team:team2,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,tag:{display:{color:16711680}},Count:1}]},display:{Lore:['[{"text":"Member of the red team","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team3] run give @s skeleton_spawn_egg{EntityTag:{id:skeleton,Team:team3,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,tag:{display:{color:255}},Count:1}]},display:{Lore:['[{"text":"Member of the blue team","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team4] run give @s skeleton_spawn_egg{EntityTag:{id:skeleton,Team:team4,PersistenceRequired:1,ArmorItems:[{},{},{},{id:leather_helmet,tag:{display:{color:16776960}},Count:1}]},display:{Lore:['[{"text":"Member of the yellow team","italic":false}]']}} 1

execute store result score @s pltf_temp run clear @s pillager_spawn_egg{display:{Lore:['[{"text":"Will not be hostile to you","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team1] run give @s pillager_spawn_egg{EntityTag:{id:pillager,Team:team1,PersistenceRequired:1,ArmorItems:[{},{},{},{id:lime_banner,Count:1}]},display:{Lore:['[{"text":"Member of the green team","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team2] run give @s pillager_spawn_egg{EntityTag:{id:pillager,Team:team2,PersistenceRequired:1,ArmorItems:[{},{},{},{id:red_banner,Count:1}]},display:{Lore:['[{"text":"Member of the red team","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team3] run give @s pillager_spawn_egg{EntityTag:{id:pillager,Team:team3,PersistenceRequired:1,ArmorItems:[{},{},{},{id:blue_banner,Count:1}]},display:{Lore:['[{"text":"Member of the blue team","italic":false}]']}} 1
execute if entity @s[scores={pltf_temp=1},team=team4] run give @s pillager_spawn_egg{EntityTag:{id:pillager,Team:team4,PersistenceRequired:1,ArmorItems:[{},{},{},{id:yellow_banner,Count:1}]},display:{Lore:['[{"text":"Member of the yellow team","italic":false}]']}} 1

