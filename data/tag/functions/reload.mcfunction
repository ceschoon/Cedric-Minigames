
## Variables for game mechanics (scores etc.)

scoreboard objectives remove tag_Score
scoreboard objectives remove tag_ScoreCopy
scoreboard objectives remove tag_Kills
scoreboard objectives remove tag_Tag
scoreboard objectives remove tag_On

scoreboard objectives add tag_Score dummy "Time Tagged"
scoreboard objectives add tag_ScoreCopy dummy
scoreboard objectives add tag_Kills minecraft.custom:minecraft.player_kills
scoreboard objectives add tag_Tag dummy
scoreboard objectives add tag_On dummy

## Indication variables for derived games (now map size variants)

scoreboard objectives remove tag_rtag
scoreboard objectives remove tag_rtagxs

scoreboard objectives add tag_rtag dummy
scoreboard objectives add tag_rtagxs dummy

scoreboard players set @a tag_rtag 0
scoreboard players set @a tag_rtagxs 0

## Game modes/rules

scoreboard objectives remove tag_gamemode
scoreboard objectives remove tag_kill_rewards

scoreboard objectives add tag_gamemode dummy
scoreboard objectives add tag_kill_rewards dummy

scoreboard players set @a tag_gamemode 0
scoreboard players set @a tag_kill_rewards 1

function tag:reloadteams
#function tagrules:reload

say Cedric Tag: reloaded!
