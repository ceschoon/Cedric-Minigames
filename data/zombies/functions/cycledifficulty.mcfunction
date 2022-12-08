
scoreboard players add @a zombies_difficulty 1
scoreboard players set @a[scores={zombies_difficulty=5..}] zombies_difficulty 0

tellraw @a[scores={zombies_difficulty=0}] [{"text":"Zombie Apocalypse: Difficulty set to 0 ","color":"gold"}]
tellraw @a[scores={zombies_difficulty=1}] [{"text":"Zombie Apocalypse: Difficulty set to 1 ","color":"gold"}]
tellraw @a[scores={zombies_difficulty=2}] [{"text":"Zombie Apocalypse: Difficulty set to 2 ","color":"gold"}]
tellraw @a[scores={zombies_difficulty=3}] [{"text":"Zombie Apocalypse: Difficulty set to 3 ","color":"gold"}]
tellraw @a[scores={zombies_difficulty=4}] [{"text":"Zombie Apocalypse: Difficulty set to 4 ","color":"gold"}]

