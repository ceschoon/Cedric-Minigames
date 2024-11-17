
## Variables for game mechanics (scores etc.)

scoreboard objectives remove tag_Score
scoreboard objectives remove tag_ScoreCopy
scoreboard objectives remove tag_Kills
scoreboard objectives remove tag_Tag
scoreboard objectives remove tag_On
scoreboard objectives remove tag_PrepTime

scoreboard objectives add tag_Score dummy "Time Tagged"
scoreboard objectives add tag_ScoreCopy dummy
scoreboard objectives add tag_Kills minecraft.custom:minecraft.player_kills
scoreboard objectives add tag_Tag dummy
scoreboard objectives add tag_On dummy
scoreboard objectives add tag_PrepTime dummy

## Indication variables for derived games (now map size variants)

scoreboard objectives remove tag_rtag
scoreboard objectives remove tag_rtagxs

scoreboard objectives add tag_rtag dummy
scoreboard objectives add tag_rtagxs dummy

# Cannot be moved to start function because we would loose the configuration set in the menu
scoreboard players set @a tag_rtag 0
scoreboard players set @a tag_rtagxs 0

# Here -1 will be replace by the config set in the menu or overwritten by the start function
scoreboard players set @a tag_PrepTime -1

## Game modes/rules

scoreboard objectives remove tag_gamemode
scoreboard objectives remove tag_kill_rewards
scoreboard objectives remove tag_mining_fatigue

scoreboard objectives add tag_gamemode dummy
scoreboard objectives add tag_kill_rewards dummy
scoreboard objectives add tag_mining_fatigue dummy

# Cannot be moved to start function because we would loose the configuration set in the menu
scoreboard players set @a tag_gamemode 0
scoreboard players set @a tag_kill_rewards 1
scoreboard players set @a[scores={tag_gamemode=0}] tag_mining_fatigue 1
scoreboard players set @a[scores={tag_gamemode=1}] tag_mining_fatigue 0

function tag:reloadteams

say Cedric Tag: reloaded!
