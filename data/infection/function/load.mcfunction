
scoreboard objectives remove inf_On
scoreboard objectives remove inf_WarnDelay
scoreboard objectives remove inf_HealDelay
scoreboard objectives remove inf_TotalKills
scoreboard objectives remove inf_Kills
scoreboard objectives remove inf_Mole

scoreboard objectives add inf_On dummy
scoreboard objectives add inf_WarnDelay dummy
scoreboard objectives add inf_HealDelay dummy
scoreboard objectives add inf_TotalKills dummy "Player Kills"
scoreboard objectives add inf_Kills minecraft.custom:minecraft.player_kills
scoreboard objectives add inf_Mole dummy

scoreboard objectives remove inf_variable
scoreboard objectives add inf_variable dummy

team remove sane
team add sane 
team modify sane color green
team modify sane nametagVisibility never

team remove infected
team add infected
team modify infected color red
team modify infected nametagVisibility never

say Cedric Infection: reloaded!

