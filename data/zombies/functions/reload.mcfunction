
scoreboard objectives remove zombies_on
scoreboard objectives add zombies_on dummy
scoreboard players set @a zombies_on 0

scoreboard objectives remove zombies_difficulty
scoreboard objectives add zombies_difficulty dummy
scoreboard players set @a zombies_difficulty 0

scoreboard objectives remove zombies_play_time
scoreboard objectives add zombies_play_time minecraft.custom:minecraft.play_time
scoreboard players set @a zombies_play_time 0

scoreboard objectives remove zombies_rng
scoreboard objectives add zombies_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a zombies_rng 0

scoreboard objectives remove zombies_count
scoreboard objectives add zombies_count dummy
scoreboard players set @a zombies_count 0

say Cedric Zombies: reloaded!
