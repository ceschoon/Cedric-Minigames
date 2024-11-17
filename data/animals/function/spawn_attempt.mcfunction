## Count number of animals within 128 blocks of the player
scoreboard players set @s animals_count 0
execute store result score @s animals_count run execute if entity @e[name=custom_animal,distance=..128]

## Summon armor stand that will mark the spawn location
## Proceed if there is fewer animals than a certain cap
execute if entity @s[scores={animals_count=..20}] run summon armor_stand ~ 0 ~ {Invisible:1,Marker:1,CustomName:"\"spawn_animal\"",CustomNameVisible:0}

## Re-locate the armor stand at a suitable distance from players
spreadplayers ~ ~ 128 128 false @e[type=armor_stand,name=spawn_animal]
execute as @a run kill @e[type=armor_stand,name=spawn_animal,distance=..32]

## Summon animal at armor stand location
execute at @e[type=armor_stand,name=spawn_animal] if block ~ ~-1 ~ grass_block run function animals:summon

## Clear armor stand
kill @e[type=armor_stand,name=spawn_animal]

