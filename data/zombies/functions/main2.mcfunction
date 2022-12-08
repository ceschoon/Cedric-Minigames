
## DEBUG INFO
#scoreboard objectives setdisplay sidebar zombies_count
#effect give @e[name=custom_zombie] glowing 1 1 true

# reset play time counter every so often (1 sec)
execute as @a[scores={zombies_difficulty=0}] run scoreboard players set @s[scores={zombies_play_time=10..}] zombies_play_time 0
execute as @a[scores={zombies_difficulty=1}] run scoreboard players set @s[scores={zombies_play_time=5..}] zombies_play_time 0
execute as @a[scores={zombies_difficulty=2}] run scoreboard players set @s[scores={zombies_play_time=3..}] zombies_play_time 0
execute as @a[scores={zombies_difficulty=3}] run scoreboard players set @s[scores={zombies_play_time=2..}] zombies_play_time 0
execute as @a[scores={zombies_difficulty=4}] run scoreboard players set @s[scores={zombies_play_time=2..}] zombies_play_time 0

# reset randomizer
execute as @a if predicate zombies:rnd_05 run scoreboard players add @s zombies_rng 1
scoreboard players set @a[scores={zombies_rng=100..}] zombies_rng 0

# try spawning zombies around players
execute as @a[scores={zombies_play_time=1}] at @s run function zombies:spawn_attempt

# kill zombies beyond 32 blocks of all players (recycle cap)
execute as @a[scores={zombies_play_time=1}] at @e[name=custom_zombie] unless entity @a[distance=..32] run tp @e[name=custom_zombie,distance=..4] ~ -100 ~
kill @e[name=custom_zombie,x=-1000000,y=-200,z=-1000000,dx=2000000,dy=100,dz=2000000]
kill @e[type=item,x=-1000000,y=-200,z=-1000000,dx=2000000,dy=100,dz=2000000]

# give special abilities to the zombies
#execute as @a[scores={zombies_difficulty=0..}] at @s run execute as @e[name=custom_zombie,distance=..32] run attribute @s generic.follow_range base set 64


