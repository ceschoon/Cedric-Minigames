
scoreboard objectives remove cmenu_show
scoreboard objectives remove cmenu_delay

scoreboard objectives add cmenu_show dummy
scoreboard objectives add cmenu_delay minecraft.custom:minecraft.play_time

scoreboard players set @a cmenu_show 0
scoreboard players set @a cmenu_delay 0

say Cedric Menu: reloaded!
