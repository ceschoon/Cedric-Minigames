
scoreboard objectives remove pltf_DeathCount
scoreboard objectives remove pltf_AddScore
scoreboard objectives remove pltf_Score
scoreboard objectives remove pltf_DelayEmrld
scoreboard objectives remove pltf_DelayDiamd
scoreboard objectives remove pltf_DelayWool
scoreboard objectives remove pltf_DelayFire1
scoreboard objectives remove pltf_DelayFire2
scoreboard objectives remove pltf_CountFire1
scoreboard objectives remove pltf_CountFire2
scoreboard objectives remove pltf_SummonFire
scoreboard objectives remove pltf_NumTeams
scoreboard objectives remove pltf_On

scoreboard objectives add pltf_DeathCount deathCount
scoreboard objectives add pltf_AddScore dummy
scoreboard objectives add pltf_Score dummy "Diamonds"
scoreboard objectives add pltf_DelayEmrld dummy
scoreboard objectives add pltf_DelayDiamd dummy
scoreboard objectives add pltf_DelayWool dummy
scoreboard objectives add pltf_DelayFire1 dummy
scoreboard objectives add pltf_DelayFire2 dummy
scoreboard objectives add pltf_CountFire1 dummy
scoreboard objectives add pltf_CountFire2 dummy
scoreboard objectives add pltf_SummonFire dummy
scoreboard objectives add pltf_NumTeams dummy
scoreboard objectives add pltf_On dummy

scoreboard players set @a pltf_NumTeams 4
scoreboard players set @a pltf_On 0

scoreboard objectives remove pltf_nofireballs
scoreboard objectives add pltf_nofireballs dummy
scoreboard players set @a pltf_nofireballs 0

say Cedric Platforms: reloaded!

