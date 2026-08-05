
# preparation time
execute if score #cgame_preptime cgame_setting matches 0 if score #ctime_TicksInSec ctime_variable matches 0 run function cgame:fill_teams
execute if score #cgame_preptime cgame_setting matches 0 if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_include_barrel_drops cgame_setting matches 1 run scoreboard players add #cmagic_barrel_drop_delay cmagic_variable 100
execute if score #cgame_preptime cgame_setting matches 0 if score #ctime_TicksInSec ctime_variable matches 0 if score #cgame_shrink_border cgame_setting matches 1 run function cgame:shrink_border
function cgame:preptime

# permanent effects
execute if score #cgame_include_runner_mining_fatigue cgame_setting matches 1 run effect give @a[team=cgame_increment,scores={cgame_on=1}] mining_fatigue 10 0 true
effect give @a[team=cgame_decrement,scores={cgame_on=1}] glowing 10 0 true
effect give @a[team=cgame_boss,scores={cgame_on=1}] resistance 10 1 true
execute if score #cgame_include_runner_mining_fatigue cgame_setting matches 1 run effect give @a[team=cgame_boss,scores={cgame_on=1}] mining_fatigue 10 0 true
effect give @a[team=cgame_boss,scores={cgame_on=1}] glowing 10 0 true

# special mechanics
function cgame:hill_mechanics
function cgame:boss_mechanics
function cgame:cult_mechanics

# cultists gain nether star as a kill reward
give @a[team=cgame_cultist,scores={cgame_on=1,cgame_kill_detect=1}] nether_star[lore=[{text:'Use me to build a copper (or gold) beacon. Stand on the beacon to activate it.',italic:false}],enchantment_glint_override=true] 1

# hunters gain life crystals as a kill reward
give @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_detect=1}] amethyst_shard[lore=[{text:'Life crystal',italic:false}],enchantment_glint_override=true] 2

# portable item shop
execute if score #cgame_include_hunter_item_shop cgame_setting matches 1 run function cgame:portable_item_shop

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
execute as @a[scores={cgame_on=1,ctime_DeathCount=1..}] at @s if entity @e[type=armor_stand,name=cgame_map_center,distance=..5] run scoreboard players set @s cgame_relocate 1
function cgame:spread_players

# process kill detectors and streak
scoreboard players add @a[scores={cgame_on=1,cgame_kill_detect=1..}] cgame_kill_detect 1
scoreboard players add @a[scores={cgame_on=1,cgame_cult_kill_detect=1..}] cgame_cult_kill_detect 1
execute unless entity @a[scores={cgame_on=1,ctime_DeathCount=1..}] run scoreboard players set @a[scores={cgame_on=1}] cgame_kill_detect 0
execute unless entity @a[scores={cgame_on=1,ctime_DeathCount=1..}] run scoreboard players set @a[scores={cgame_on=1}] cgame_cult_kill_detect 0
scoreboard players set @a[scores={cgame_on=1,ctime_DeathCount=1..}] cgame_kill_streak 0

# display game time
execute store result score @a[scores={cgame_on=1}] cgame_time_copy_for_display run scoreboard players get #ctime_Seconds ctime_variable
scoreboard objectives setdisplay list cgame_time_copy_for_display

# detect win
execute if score #cgame_end_game_when_no_cultist_left cgame_setting matches 1 unless entity @a[team=cgame_cultist,scores={cgame_on=1}] run scoreboard players set #cgame_time_to_win cgame_setting 0
execute as @a[scores={cgame_on=1}] if score @s cgame_score >= #cgame_score_to_win cgame_setting run function cgame:find_winner
execute as @a[scores={cgame_on=1}] if score #ctime_Seconds ctime_variable >= #cgame_time_to_win cgame_setting run function cgame:find_winner

# helmet to better distinguish teams
function cgame:force_team_helmets

# compass target priorities
scoreboard players set @a ccompass_target 0
scoreboard players set @a[scores={cgame_on=1},team=cgame_regular] ccompass_target 1
scoreboard players set @a[scores={cgame_on=1},team=cgame_increment] ccompass_target 3
scoreboard players set @a[scores={cgame_on=1},team=cgame_decrement] ccompass_target 3
scoreboard players set @a[scores={cgame_on=1},team=cgame_boss] ccompass_target 3
scoreboard players set @a[scores={cgame_on=1},team=cgame_hunter] ccompass_target 0
scoreboard players set @a[scores={cgame_on=1},team=cgame_cultist] ccompass_target 2
scoreboard players set @e[type=armor_stand,name=cgame_hill] ccompass_target 1

# compass groups
scoreboard players set @a[scores={cgame_on=1},team=cgame_regular] ccompass_group 6
scoreboard players set @a[scores={cgame_on=1},team=cgame_increment] ccompass_group 10
scoreboard players set @a[scores={cgame_on=1},team=cgame_decrement] ccompass_group 9
scoreboard players set @a[scores={cgame_on=1},team=cgame_boss] ccompass_group 13
scoreboard players set @a[scores={cgame_on=1},team=cgame_hunter] ccompass_group 8
scoreboard players set @a[scores={cgame_on=1},team=cgame_cultist] ccompass_group 7

# make players invincible during pauses
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={cgame_on=1}] resistance 1 255
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={cgame_on=1}] slowness 1 255
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={cgame_on=1}] invisibility 1

# For compatibility with the Herobrine datapack
# TODO: set priorities based on present teams ?
scoreboard players set @a cfp_herobrine_target_override 0
scoreboard players set @a[team=cgame_increment,scores={cgame_on=1}] cfp_herobrine_target_override 1
scoreboard players set @a[team=cgame_boss,scores={cgame_on=1}] cfp_herobrine_target_override 1


