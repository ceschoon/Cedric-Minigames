
## Add some space after the display of menus + Reload option
tellraw @a[scores={cmenu_show=2}] [{"text":"[Reload Everything]","color":"dark_aqua","bold":false,"clickEvent":{"action":"run_command","value":"/reload"}}]
tellraw @a[scores={cmenu_show=2}] [" "]

## Flag indicating to other datapacks when to display their menus
## We need it to be displayed for two ticks to process the clickEvent
scoreboard players set @a[scores={cmenu_show=2..}] cmenu_show 0
scoreboard players add @a[scores={cmenu_show=1..}] cmenu_show 1

## Pop-up message to display menus
tellraw @a[scores={cmenu_delay=20}] [" "]
tellraw @a[scores={cmenu_delay=20}] [{"text":"=== Cedric's Minigames ","color":"gold","bold":true},{"text":"[display]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s cmenu_show 1"}},{"text":" ===","color":"gold","bold":true}]
tellraw @a[scores={cmenu_delay=20}] [" "]

## Add delay of 3 minutes (3*1200 ticks) between pop-up messages
execute if entity @a[scores={cmenu_delay=3600..}] run scoreboard players set @a cmenu_delay 0

