
################################################################
## Reset all settings

function cgame:load

################################################################
## Randomize generic settings

execute store result score #temp cgame_variable run random value 1..4
execute if score #temp cgame_variable matches 1 store result score #cgame_preptime cgame_setting run random value 60..600

#scoreboard players set #cgame_time_to_win cgame_setting 999999
#execute store result score #cgame_score_to_win cgame_setting run random value 100..1500

execute store result score #cgame_time_to_win cgame_setting run random value 600..2400
scoreboard players set #cgame_score_to_win cgame_setting 999999

execute store result score #temp cgame_variable run random value 1..4
execute if score #temp cgame_variable matches 1 run scoreboard players set #cgame_include_hill cgame_setting 1

execute store result score #temp cgame_variable run random value 1..4
execute if score #temp cgame_variable matches 1 run scoreboard players set #cgame_include_barrel_drops cgame_setting 1

execute store result score #temp cgame_variable run random value 1..4
execute if score #temp cgame_variable matches 1 run scoreboard players set #cgame_shrink_border cgame_setting 1

################################################################
## Small chance of giving permanent effects

execute store result score #temp cgame_variable run random value 1..10
execute if score #temp cgame_variable matches 1 run scoreboard players set @a[scores={cfp_is_fake_player=0}] permeffects_strength 1

execute store result score #temp cgame_variable run random value 1..10
execute if score #temp cgame_variable matches 1 run scoreboard players set @a[scores={cfp_is_fake_player=0}] permeffects_blindness 1

################################################################
## Small chance of having a zombie apocalypse

execute store result score #temp cgame_variable run random value 1..10
execute if score #temp cgame_variable matches 1 run scoreboard players set @a[scores={cfp_is_fake_player=0}] zombies_on 1
execute if score #temp cgame_variable matches 1 store result score @a[scores={cfp_is_fake_player=0}] zombies_difficulty run random value 0..2
execute if score #temp cgame_variable matches 1 run scoreboard players set @a[scores={cfp_is_fake_player=0}] permeffects_darknight 1
execute if score #temp cgame_variable matches 1 run gamerule doDaylightCycle true

################################################################
## Roles

# Randomly assign roles (no regular players nor cultists though)
execute as @a[scores={cfp_is_fake_player=0}] store result score @s cgame_starting_team run random value 1..4

# Not more than one runner (choose one and turn the other into hunters)
scoreboard players set @r[scores={cgame_starting_team=1}] cgame_starting_team 101
scoreboard players set @a[scores={cgame_starting_team=1}] cgame_starting_team 4
scoreboard players set @a[scores={cgame_starting_team=101}] cgame_starting_team 1

# Activate curse if there is such a role (or remove the role entirely)
execute store result score #temp cgame_variable run random value 1..10
execute if score #temp cgame_variable matches 1 if entity @a[scores={cgame_starting_team=2}] run scoreboard players set #cgame_curse_active cgame_setting 1
execute unless score #temp cgame_variable matches 1 run scoreboard players set @a[scores={cgame_starting_team=2}] cgame_starting_team 4

# Activate boss if there is such a role
execute if entity @a[scores={cgame_starting_team=3}] run scoreboard players set #cgame_include_boss cgame_setting 1

# Not more than one boss (choose one and turn the other into hunters)
scoreboard players set @r[scores={cgame_starting_team=3}] cgame_starting_team 103
scoreboard players set @a[scores={cgame_starting_team=3}] cgame_starting_team 4
scoreboard players set @a[scores={cgame_starting_team=103}] cgame_starting_team 3

# Activate hunter item shop if there is such a role
execute if entity @a[scores={cgame_starting_team=4}] run scoreboard players set #cgame_include_hunter_item_shop cgame_setting 1

# Random chance to play a cultist game
execute store result score #temp cgame_variable run random value 1..3
execute if score #temp cgame_variable matches 1 run scoreboard players set @a[scores={cgame_starting_team=4}] cgame_starting_team 5
execute if score #temp cgame_variable matches 1 if score #cgame_time_to_win cgame_setting matches ..1200 run scoreboard players add #cgame_time_to_win cgame_setting 1200

# Select two cultists (if any) and randomly select whether or not they will be fake cultists
scoreboard players set @r[scores={cgame_starting_team=5}] cgame_starting_team 105
scoreboard players set @r[scores={cgame_starting_team=5}] cgame_starting_team 105
execute as @a[scores={cgame_starting_team=105}] store result score @s cgame_is_fake_cultist run random value 1..4
scoreboard players set @a[scores={cgame_is_fake_cultist=2..}] cgame_is_fake_cultist 0
scoreboard players set @a[scores={cgame_starting_team=105}] cgame_starting_team 5

