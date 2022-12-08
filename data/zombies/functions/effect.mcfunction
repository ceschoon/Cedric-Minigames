
## Apply fire resistance so that zombies can survive during the day
execute if entity @s[scores={zombies_difficulty=3..}] run effect give @e[name=custom_zombie,distance=..3] fire_resistance 99999 1 true

## Apply levitation to elytra zombies so they can immediately fall on player
execute if entity @s[scores={zombies_difficulty=..3,zombies_rng=0..4}] run effect give @e[name=custom_zombie,distance=..3] levitation 10 1 true

## Random effects (less frequent at lower difficulties)
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] speed 99999 1 true
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_rare run effect give @e[name=custom_zombie,distance=..3] speed 99999 2 true
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_rare run effect give @e[name=custom_zombie,distance=..3] speed 99999 3 true
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] jump_boost 99999 1 true
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] jump_boost 99999 2 true
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_rare run effect give @e[name=custom_zombie,distance=..3] jump_boost 99999 3 true
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_rare run effect give @e[name=custom_zombie,distance=..3] strength 99999 1 true
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_rare run effect give @e[name=custom_zombie,distance=..3] resistance 99999 1 true
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_rare run effect give @e[name=custom_zombie,distance=..3] poison 99999 1 true
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_rare run effect give @e[name=custom_zombie,distance=..3] poison 99999 2 true
execute if entity @s[scores={zombies_difficulty=..3}] if predicate zombies:rnd_rare run effect give @e[name=custom_zombie,distance=..3] invisibility 99999 1 true

## Random effects (more frequent at higher difficulties)
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] speed 99999 1 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] speed 99999 2 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] speed 99999 3 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] jump_boost 99999 1 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] jump_boost 99999 2 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] jump_boost 99999 3 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] jump_boost 99999 4 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] jump_boost 99999 5 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] strength 99999 1 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] resistance 99999 1 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] poison 99999 1 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] poison 99999 2 true
execute if entity @s[scores={zombies_difficulty=4..}] if predicate zombies:rnd_common run effect give @e[name=custom_zombie,distance=..3] invisibility 99999 1 true

