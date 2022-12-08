
scoreboard objectives remove duels_On
scoreboard objectives remove duels_SetId
scoreboard objectives remove duels_Score

scoreboard objectives add duels_Hunted dummy
scoreboard objectives add duels_On dummy
scoreboard objectives add duels_SetId dummy
scoreboard objectives add duels_Score dummy "Score"

scoreboard players set @a duels_SetId 0
scoreboard players set @a duels_Score 0

say Cedric Duels: reloaded!
