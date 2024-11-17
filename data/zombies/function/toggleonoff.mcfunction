
scoreboard players set @a[scores={zombies_on=0}] zombies_on 10
scoreboard players set @a[scores={zombies_on=1}] zombies_on 11
scoreboard players set @a[scores={zombies_on=10}] zombies_on 1
scoreboard players set @a[scores={zombies_on=11}] zombies_on 0

tellraw @a[scores={zombies_on=0}] [{"text":"Zombie Apocalypse: Stopped ","color":"gold"}]
tellraw @a[scores={zombies_on=1}] [{"text":"Zombie Apocalypse: Activated! ","color":"gold"}]

