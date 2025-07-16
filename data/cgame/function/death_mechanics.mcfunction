
# detect death and give respawn kit
execute as @a[scores={cgame_on=1,ctime_DeathCount=2}] at @s run function cgame:give_respawn_set

# If solo runner with tag (cgame_increment) dies from pve, player with lowest score becomes the new runner 
execute if entity @a[team=cgame_increment,scores={cgame_on=1,ctime_DeathCount=2}] unless entity @a[team=cgame_regular,scores={cgame_on=1,cgame_kill_detect=1..}] run scoreboard players operation #minscore cgame_score = @r[team=cgame_regular,scores={cgame_on=1}] cgame_score
execute if entity @a[team=cgame_increment,scores={cgame_on=1,ctime_DeathCount=2}] unless entity @a[team=cgame_regular,scores={cgame_on=1,cgame_kill_detect=1..}] as @a[team=cgame_regular,scores={cgame_on=1}] run scoreboard players operation #minscore cgame_score < @s cgame_score
execute if entity @a[team=cgame_increment,scores={cgame_on=1,ctime_DeathCount=2}] unless entity @a[team=cgame_regular,scores={cgame_on=1,cgame_kill_detect=1..}] as @a[team=cgame_regular,scores={cgame_on=1}] if score @s cgame_score = #minscore cgame_score run team join cgame_increment @s

# In case a player kills the solo ("tagged") runner, the killer becomes a new runner
# TODO: use the scoreboard criterion "teamkill.gold"
execute if entity @a[team=cgame_increment,scores={cgame_on=1,ctime_DeathCount=2}] run team join cgame_increment @a[team=cgame_regular,scores={cgame_on=1,cgame_kill_detect=1..}]

# If the solo ("tagged") player dies, he becomes a regular player again
team join cgame_regular @a[team=cgame_increment,scores={cgame_on=1,ctime_DeathCount=2}]

#### Note: swapping the curse is a bit harder to implement and may be less fun
##execute if entity @a[team=cgame_regular,scores={cgame_on=1,ctime_DeathCount=1..}] run team join cgame_regular @a[team=cgame_decrement,scores={cgame_on=1,ctime_DeathCount=0}]

# If curse mode is active, any (regular) player that dies gets the curse
execute if score #cgame_curse_active cgame_setting matches 1 run team join cgame_decrement @a[team=cgame_regular,scores={cgame_on=1,ctime_DeathCount=1..}]

# Cursed players loose their curse by killing someone (anyone)
team join cgame_regular @a[team=cgame_decrement,scores={cgame_on=1,cgame_kill_detect=1..}]

# If the boss player dies, he becomes a regular player (but with style...)
execute if entity @a[team=cgame_boss,scores={cgame_on=1,ctime_DeathCount=1..}] run function cgame:boss_death
team join cgame_regular @a[team=cgame_boss,scores={cgame_on=1,ctime_DeathCount=1..}]

# Unique player in the special teams
scoreboard players set @a cgame_temp 0
scoreboard players set @a[team=cgame_increment,scores={cgame_on=1}] cgame_temp 1
scoreboard players set @r[team=cgame_increment,scores={cgame_on=1}] cgame_temp 0
#scoreboard players set @a[team=cgame_decrement,scores={cgame_on=1}] cgame_temp 1
#scoreboard players set @r[team=cgame_decrement,scores={cgame_on=1}] cgame_temp 0
scoreboard players set @a[team=cgame_boss,scores={cgame_on=1}] cgame_temp 1
scoreboard players set @r[team=cgame_boss,scores={cgame_on=1}] cgame_temp 0
team join cgame_regular @a[scores={cgame_temp=1,cgame_on=1}]

#### DEBUG
#execute as @a[scores={ctime_DeathCount=1..}] run say "@s just died"
#execute as @a[scores={cgame_kill_detect=1..}] run say "@s killed someone"
#execute as @a[scores={cgame_kill_detect=1..}] as @a[team=cgame_increment] run say "@s is tagged (inc)"
#execute as @a[scores={cgame_kill_detect=1..}] as @a[team=cgame_decrement] run say "@s is tagged (dec)"


