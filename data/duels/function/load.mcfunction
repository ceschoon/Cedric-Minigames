
scoreboard objectives remove duels_On
scoreboard objectives remove duels_SetId
scoreboard objectives remove duels_Score

scoreboard objectives add duels_On dummy
scoreboard objectives add duels_SetId dummy
scoreboard objectives add duels_Score dummy "Score"

execute as @a unless entity @s[scores={cfp_is_fake_player=1}] run scoreboard players set @s duels_Score 0
scoreboard players set @a duels_SetId 0

say Cedric Duels: reloaded!
