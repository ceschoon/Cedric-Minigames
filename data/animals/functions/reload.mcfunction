# Compass Module reload

scoreboard objectives remove animals_play_time
scoreboard objectives add animals_play_time minecraft.custom:minecraft.play_time
scoreboard players set @a animals_play_time 0

scoreboard objectives remove animals_rng
scoreboard objectives add animals_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a animals_rng 0

scoreboard objectives remove animals_count
scoreboard objectives add animals_count dummy
scoreboard players set @a animals_count 0

say Cedric More Animals: reloaded!
