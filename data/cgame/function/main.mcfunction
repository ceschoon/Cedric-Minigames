
# preparation time
execute if score #cgame_preptime cgame_setting matches 0 if score #ctime_TicksInSec ctime_variable matches 0 run function cgame:fill_teams
execute if score #cgame_preptime cgame_setting matches 0 if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_include_barrel_drops cgame_setting matches 1 run scoreboard players add #cmagic_barrel_drop_delay cmagic_variable 100
execute if score #cgame_preptime cgame_setting matches 0 if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_shrink_border cgame_setting matches 1 run function cgame:shrink_border
function cgame:preptime

# permanent effects
effect give @a[team=cgame_increment,scores={cgame_on=1}] mining_fatigue 10 0 true
effect give @a[team=cgame_decrement,scores={cgame_on=1}] glowing 1 255 true
effect give @a[team=cgame_boss,scores={cgame_on=1}] resistance 10 1 true
effect give @a[team=cgame_boss,scores={cgame_on=1}] mining_fatigue 10 0 true
effect give @a[team=cgame_cultist,scores={cgame_on=1}] glowing 1 255 true

# special mechanics
function cgame:hill_mechanics
function cgame:boss_mechanics
function cgame:cult_mechanics

# hunters gain life crystals as a kill reward
give @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_detect=1}] amethyst_shard[lore=['{"text":"Life crystal","italic":false}'],enchantment_glint_override=true] 2

# particles above hunters with high kill streak
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=1..}] at @s if score #ctime_TicksInSec ctime_variable matches 0 run particle reverse_portal ~ ~2.5 ~ 0.0 0.0 0.0 0.01 1
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=2..}] at @s if score #ctime_TicksInSec ctime_variable matches 4 run particle reverse_portal ~ ~2.5 ~ 0.0 0.0 0.0 0.02 1
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=3..}] at @s if score #ctime_TicksInSec ctime_variable matches 8 run particle reverse_portal ~ ~2.5 ~ 0.0 0.0 0.0 0.03 2
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=4..}] at @s if score #ctime_TicksInSec ctime_variable matches 12 run particle reverse_portal ~ ~2.5 ~ 0.0 0.0 0.0 0.04 2
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=5..}] at @s if score #ctime_TicksInSec ctime_variable matches 16 run particle reverse_portal ~ ~2.5 ~ 0.0 0.0 0.0 0.05 3

# increment scores
function cgame:update_scores

# death mechanics
function cgame:death_mechanics

# play a sound when a player death occurs
execute if entity @a[scores={cgame_on=1,ctime_DeathCount=1}] as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~

# spread dead players to a new location, if they re-spawned at the map center
# otherwise they can be spawn-killed (this works only if spawnradius set to 0)
# TODO: There is an exploit if a player obstructs the world spawn...
execute as @a[scores={cgame_on=1,ctime_DeathCount=1}] at @s if entity @e[type=armor_stand,name=cgame_map_center,distance=..5] run scoreboard players set @s cgame_relocate 1
function cgame:spread_players

# process kill detectors and streak
scoreboard players add @a[scores={cgame_on=1,cgame_kill_detect=1..}] cgame_kill_detect 1
scoreboard players add @a[scores={cgame_on=1,cgame_cult_kill_detect=1..}] cgame_cult_kill_detect 1
execute unless entity @a[scores={cgame_on=1,ctime_DeathCount=1..}] run scoreboard players set @a[scores={cgame_on=1}] cgame_kill_detect 0
execute unless entity @a[scores={cgame_on=1,ctime_DeathCount=1..}] run scoreboard players set @a[scores={cgame_on=1}] cgame_cult_kill_detect 0
scoreboard players set @a[scores={cgame_on=1,ctime_DeathCount=1..}] cgame_kill_streak 0

# compass
# TODO: unicity problem! There should only be one target at a time
#       either change the compass module OR make it so that the following teams can only have one member
execute as @a[team=cgame_decrement] run function compass:trackme
execute as @a[team=cgame_increment] run function compass:trackme
execute as @a[team=cgame_boss] run function compass:trackme

# display game time
execute store result score @a[scores={cgame_on=1}] cgame_time_copy_for_display run scoreboard players get #ctime_Seconds ctime_variable
scoreboard objectives setdisplay list cgame_time_copy_for_display

# game ends if there are only regular players left and no way to progress into the game
execute unless entity @a[team=!cgame_regular,scores={cgame_on=1}] unless entity @e[type=armor_stand,name=cgame_hill] run scoreboard players set #cgame_time_to_win cgame_setting -999999

# detect win
execute as @a[scores={cgame_on=1}] if score @s cgame_score >= #cgame_score_to_win cgame_setting at @s run function cgame:win
execute as @a[scores={cgame_on=1}] if score #ctime_Seconds ctime_variable >= #cgame_time_to_win cgame_setting at @s run function cgame:find_winner
execute as @a[scores={cgame_on=1}] unless entity @a[team=!cgame_cultist,scores={cgame_on=1}] unless entity @a[team=cgame_cultist,scores={cgame_on=1,cgame_is_fake_cultist=1}] at @s run function cgame:cult_win

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


