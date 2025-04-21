
###################################################
## Player variables

scoreboard objectives remove flsheep_DeathCnt
scoreboard objectives remove flsheep_AddScore
scoreboard objectives remove flsheep_Score
scoreboard objectives remove flsheep_On

scoreboard objectives add flsheep_DeathCnt deathCount
scoreboard objectives add flsheep_AddScore dummy
scoreboard objectives add flsheep_Score dummy "Sheep delivered"
scoreboard objectives add flsheep_On dummy

scoreboard players set @a flsheep_On 0

scoreboard objectives remove flsheep_rng
scoreboard objectives add flsheep_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a flsheep_rng 0


###################################################
## Global variables

scoreboard objectives remove flsheep_variable
scoreboard objectives add flsheep_variable dummy

scoreboard players set #flsheep_NumTeams flsheep_variable 2


say Cedric Flying Sheep: reloaded!
