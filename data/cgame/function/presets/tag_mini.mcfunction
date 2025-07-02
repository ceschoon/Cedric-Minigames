
scoreboard players set #cgame_preptime cgame_setting 0
scoreboard players set #cgame_time_to_win cgame_setting 999999
scoreboard players set #cgame_score_to_win cgame_setting 600
scoreboard players set #cgame_curse_active cgame_setting 0
scoreboard players set #cgame_map_size cgame_setting 1

scoreboard players set @a[scores={cfp_is_fake_player=0}] permeffects_strength 1

##### Assign teams
#scoreboard players set @a cgame_temp 0
#scoreboard players set @r[scores={cfp_is_fake_player=0}] cgame_temp 1
#give @a[scores={cgame_temp=0}] paper[lore=['{"text":"Role: Regular","color":dark_red,"italic":false}'],enchantment_glint_override=true]
#give @r[scores={cgame_temp=1}] paper[lore=['{"text":"Role: Chased Tag","color":gold,"italic":false}'],enchantment_glint_override=true]
#####

scoreboard players set @a[scores={cfp_is_fake_player=0}] cgame_starting_team 0
scoreboard players set @r[scores={cfp_is_fake_player=0}] cgame_starting_team 1
