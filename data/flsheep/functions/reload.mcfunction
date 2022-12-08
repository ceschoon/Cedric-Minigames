
scoreboard objectives remove flsheep_DeathCnt
scoreboard objectives remove flsheep_AddScore
scoreboard objectives remove flsheep_Score
scoreboard objectives remove flsheep_Delay
scoreboard objectives remove flsheep_On
scoreboard objectives remove flsheep_Numteams

scoreboard objectives add flsheep_DeathCnt deathCount
scoreboard objectives add flsheep_AddScore dummy
scoreboard objectives add flsheep_Score dummy "Sheep delivered"
scoreboard objectives add flsheep_Delay dummy
scoreboard objectives add flsheep_On dummy
scoreboard objectives add flsheep_NumTeams dummy

scoreboard players set @a flsheep_On 0
scoreboard players set @a flsheep_NumTeams 2

scoreboard objectives remove flsheep_rng
scoreboard objectives add flsheep_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a flsheep_rng 0

say Cedric Flying Sheep: reloaded!