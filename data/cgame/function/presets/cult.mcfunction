
scoreboard players set #cgame_preptime cgame_setting 0
scoreboard players set #cgame_time_to_win cgame_setting 999999
scoreboard players set #cgame_score_to_win cgame_setting 999999
scoreboard players set #cgame_curse_active cgame_setting 0
scoreboard players set #cgame_map_size cgame_setting 3
scoreboard players set #cgame_end_game_when_no_cultist_left cgame_setting 1

scoreboard players set @a[scores={cfp_is_fake_player=0}] cgame_starting_team 5

## Randomly select a fake cultist
scoreboard players set @a[scores={cfp_is_fake_player=0}] cgame_is_fake_cultist 0
scoreboard players set @r[scores={cfp_is_fake_player=0}] cgame_is_fake_cultist 1

## Small chance of having others
execute as @a[scores={cfp_is_fake_player=0,cgame_is_fake_cultist=0}] store result score @s cgame_is_fake_cultist run random value 1..10
scoreboard players set @a[scores={cgame_is_fake_cultist=2..}] cgame_is_fake_cultist 0
