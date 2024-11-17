
# Lower enchants at low difficulties
execute if entity @s[scores={zombies_difficulty=..4}] if predicate zombies:rnd_rare run enchant @e[name=custom_zombie,distance=..3] sharpness 1
execute if entity @s[scores={zombies_difficulty=..4}] if predicate zombies:rnd_rare run enchant @e[name=custom_zombie,distance=..3] sharpness 2
execute if entity @s[scores={zombies_difficulty=..4}] if predicate zombies:rnd_rare run enchant @e[name=custom_zombie,distance=..3] fire_aspect 1

# Higher enchants at higher difficulties
execute if entity @s[scores={zombies_difficulty=5..}] if predicate zombies:rnd_common run enchant @e[name=custom_zombie,distance=..3] sharpness 1
execute if entity @s[scores={zombies_difficulty=5..}] if predicate zombies:rnd_common run enchant @e[name=custom_zombie,distance=..3] sharpness 2
execute if entity @s[scores={zombies_difficulty=5..}] if predicate zombies:rnd_rare run enchant @e[name=custom_zombie,distance=..3] fire_aspect 2


