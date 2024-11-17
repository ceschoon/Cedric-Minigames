
# reset play time counter every so often (1 sec)
scoreboard players set @a[scores={animals_play_time=20..}] animals_play_time 0

# reset randomizer
scoreboard players set @a[scores={animals_rng=100..}] animals_rng 0

# try spawning animals around players
execute as @a[scores={animals_play_time=1}] at @s run function animals:spawn_attempt

# kill animals beyond 128 blocks of all players (recycle cap)
execute as @a[scores={animals_play_time=1}] at @e[name=custom_animal] unless entity @a[distance=..128] run tp @e[name=custom_animal,distance=..4] ~ -100 ~
kill @e[name=custom_animal,x=-1000000,y=-200,z=-1000000,dx=2000000,dy=100,dz=2000000]
kill @e[type=item,x=-1000000,y=-200,z=-1000000,dx=2000000,dy=100,dz=2000000]
