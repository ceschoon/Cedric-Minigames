
#######################################################
## Player variables

scoreboard objectives remove pltf_On
scoreboard objectives remove pltf_DeathCount
scoreboard objectives remove pltf_DelayBlind
scoreboard objectives remove pltf_DelayCage
scoreboard objectives remove pltf_AddScore
scoreboard objectives remove pltf_Score

scoreboard objectives add pltf_On dummy
scoreboard objectives add pltf_DeathCount deathCount
scoreboard objectives add pltf_DelayBlind dummy
scoreboard objectives add pltf_DelayCage dummy
scoreboard objectives add pltf_AddScore dummy
scoreboard objectives add pltf_Score dummy "Diamonds"


#######################################################
## Global variables

scoreboard objectives remove pltf_variable
scoreboard objectives add pltf_variable dummy


#######################################################
## Settings

scoreboard objectives remove pltf_setting
scoreboard objectives add pltf_setting dummy

scoreboard players set #pltf_NumTeams pltf_setting 4
scoreboard players set #pltf_nofireballs pltf_setting 0
scoreboard players set #pltf_score_to_win pltf_setting 15
scoreboard players set #pltf_delay_diamond pltf_setting 600
scoreboard players set #pltf_delay_emerald pltf_setting 100
scoreboard players set #pltf_delay_wool pltf_setting 30


say Cedric Platforms: reloaded!

