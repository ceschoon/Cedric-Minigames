
# preparation time
execute if score #cgame_preptime cgame_setting matches 0 if score #ctime_TicksInSec ctime_variable matches 0 run function cgame:fill_teams
function cgame:preptime

# permanent effects
effect give @a[team=cgame_increment,scores={cgame_on=1}] mining_fatigue 10 0 true
effect give @a[team=cgame_decrement,scores={cgame_on=1}] glowing 1 255 true
effect give @a[team=cgame_boss,scores={cgame_on=1}] resistance 10 1 true
effect give @a[team=cgame_boss,scores={cgame_on=1}] mining_fatigue 10 0 true

# special mechanics
function cgame:hill_mechanics
function cgame:boss_mechanics

# increment scores
execute if score #cgame_preptime cgame_setting matches ..0 if score #ctime_TicksInSec ctime_variable matches 0 run function cgame:update_scores

# death mechanics
function cgame:death_mechanics

# reset kill detector
execute unless entity @a[scores={cgame_on=1,ctime_DeathCount=1..}] run scoreboard players set @a[scores={cgame_on=1}] cgame_kill_detect 0

# compass
# TODO: unicity problem! There can only be one target at a time
#       either change the compass module OR make it so that the following teams can only have one member
execute as @a[team=cgame_decrement] run function compass:trackme
execute as @a[team=cgame_increment] run function compass:trackme
execute as @a[team=cgame_boss] run function compass:trackme

# detect win
execute as @a[scores={cgame_on=1}] if score @s cgame_score >= #cgame_score_to_win cgame_setting at @s run function cgame:win
execute as @a[scores={cgame_on=1}] if score #ctime_Seconds ctime_variable >= #cgame_time_to_win cgame_setting at @s run function cgame:find_winner

# helmet to better distinguish teams
function cgame:force_team_helmets

# make players invincible during pauses
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={cgame_on=1}] resistance 1 255
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={cgame_on=1}] slowness 1 255
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={cgame_on=1}] invisibility 1

# For compatibility with the Herobrine datapack
# TODO: set priorities based on present teams ?
scoreboard players set @a cfp_herobrine_target_override 0
scoreboard players set @a[team=cgame_increment,scores={cgame_on=1}] cfp_herobrine_target_override 1
scoreboard players set @a[team=cgame_boss,scores={cgame_on=1}] cfp_herobrine_target_override 1
