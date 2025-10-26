
scoreboard objectives remove cmenu_show_composer
scoreboard objectives remove cmenu_show
scoreboard objectives remove cmenu_delay

scoreboard objectives add cmenu_show_composer dummy
scoreboard objectives add cmenu_show dummy
scoreboard objectives add cmenu_delay minecraft.custom:minecraft.play_time

scoreboard players set @a cmenu_show_composer 0
scoreboard players set @a cmenu_show 0
scoreboard players set @a cmenu_delay 0

scoreboard objectives remove cmenu_setting
scoreboard objectives add cmenu_setting dummy
scoreboard players set #cmenu_loaded cmenu_setting 1

say Cedric Menu: reloaded!
