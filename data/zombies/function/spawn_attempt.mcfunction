## Count number of zombies within 32 blocks of the player
scoreboard players set @s zombies_count 0
execute store result score @s zombies_count run execute if entity @e[name=custom_zombie,distance=..32]

## Summon armor stand that will mark the spawn location
## Proceed if there is fewer zombies than a certain cap (spawn only at night)
execute if entity @s[scores={zombies_difficulty=0,zombies_count=..10}] unless entity @e[type=armor_stand,name=spawn_zombie] if predicate ctime:is_deep_night run summon armor_stand ~ 0 ~ {Invisible:1,Marker:1,CustomName:"\"spawn_zombie\"",CustomNameVisible:0}
execute if entity @s[scores={zombies_difficulty=1,zombies_count=..20}] unless entity @e[type=armor_stand,name=spawn_zombie] if predicate ctime:is_deep_night run summon armor_stand ~ 0 ~ {Invisible:1,Marker:1,CustomName:"\"spawn_zombie\"",CustomNameVisible:0}
execute if entity @s[scores={zombies_difficulty=2,zombies_count=..30}] unless entity @e[type=armor_stand,name=spawn_zombie] if predicate ctime:is_deep_night run summon armor_stand ~ 0 ~ {Invisible:1,Marker:1,CustomName:"\"spawn_zombie\"",CustomNameVisible:0}
execute if entity @s[scores={zombies_difficulty=3,zombies_count=..40}] unless entity @e[type=armor_stand,name=spawn_zombie] run summon armor_stand ~ 0 ~ {Invisible:1,Marker:1,CustomName:"\"spawn_zombie\"",CustomNameVisible:0}
execute if entity @s[scores={zombies_difficulty=4,zombies_count=..50}] unless entity @e[type=armor_stand,name=spawn_zombie] run summon armor_stand ~ 0 ~ {Invisible:1,Marker:1,CustomName:"\"spawn_zombie\"",CustomNameVisible:0}

## Re-locate the armor stand at a suitable distance from players
spreadplayers ~ ~ 32 32 false @e[type=armor_stand,name=spawn_zombie]
execute as @a run kill @e[type=armor_stand,name=spawn_zombie,distance=..24]

## Summon zombie at armor stand location
execute at @e[type=armor_stand,name=spawn_zombie] run function zombies:summon
execute at @e[type=armor_stand,name=spawn_zombie] run function zombies:enchant
execute at @e[type=armor_stand,name=spawn_zombie] run function zombies:effect

## Clear armor stand
kill @e[type=armor_stand,name=spawn_zombie]

