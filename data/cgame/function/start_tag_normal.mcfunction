# Start of normal tag game ("rtag")

###############################################################################
## Base common to all related minigames

scoreboard players set @a cgame_on 1
scoreboard players set @a[scores={cfp_is_fake_player=1}] cgame_on 0

scoreboard players set @a[scores={cgame_on=1}] cgame_score 0
scoreboard players set @a[scores={cgame_on=1}] cgame_kills 0
scoreboard players set @a[scores={cgame_on=1}] cgame_kill_detect 0

scoreboard objectives setdisplay sidebar cgame_score

gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

gamemode survival @a[scores={cgame_on=1}]
advancement revoke @a[scores={cgame_on=1}] everything

effect clear @a[scores={cgame_on=1}]
effect give @a[scores={cgame_on=1}] resistance 10 255
effect give @a[scores={cgame_on=1}] regeneration 10 10
effect give @a[scores={cgame_on=1}] saturation 10 10

clear @a[scores={cgame_on=1}]

tp @a[scores={cgame_on=1}] ~ ~ ~
spawnpoint @a ~ ~ ~
setworldspawn ~ ~ ~

time set 0
weather clear

title @a[scores={cgame_on=1}] title {"text":"Game Starts Now!","color":"gold"}

###############################################################################
## Specifics to this minigame --> Should all be presets?

## TODO: These should be presets selectable (and editable) *before* start 
scoreboard players set #cgame_preptime cgame_setting 0
scoreboard players set #cgame_time_to_win cgame_setting 999999
scoreboard players set #cgame_score_to_win cgame_setting 1200

team join cgame_regular @a[scores={cgame_on=1}]

give @a[scores={cgame_on=1}] compass
execute as @a[scores={cgame_on=1}] run function cgame:give_respawn_set

# Set worldborder
execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 300

# Spread Players (use dimroof variable from compass module)
execute if entity @s[scores={dimroof=0}] run spreadplayers ~ ~ 150 150 false @a[scores={cgame_on=1}]
execute if entity @s[scores={dimroof=1}] run spreadplayers ~ ~ 150 150 under 127 false @a[scores={cgame_on=1}]
execute as @a[scores={cgame_on=1}] at @s run spawnpoint @s ~ ~ ~

