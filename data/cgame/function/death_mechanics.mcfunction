
# detect death and give respawn kit
execute as @a[scores={game_on=1,ctime_DeathCount=2}] at @s run function cgame:give_respawn_set

# If solo runner with tag (cgame_increment) dies from pve, player with lowest score becomes the new runner 
execute if entity @a[team=cgame_increment,scores={game_on=1,ctime_DeathCount=2}] unless entity @a[team=cgame_regular,scores={game_on=1,cgame_kill_detect=1..}] run scoreboard players operation #minscore cgame_score = @r[team=cgame_regular,scores={game_on=1}] cgame_score
execute if entity @a[team=cgame_increment,scores={game_on=1,ctime_DeathCount=2}] unless entity @a[team=cgame_regular,scores={game_on=1,cgame_kill_detect=1..}] as @a[team=cgame_regular,scores={game_on=1}] run scoreboard players operation #minscore cgame_score < @s cgame_score
execute if entity @a[team=cgame_increment,scores={game_on=1,ctime_DeathCount=2}] unless entity @a[team=cgame_regular,scores={game_on=1,cgame_kill_detect=1..}] as @a[team=cgame_regular,scores={game_on=1}] if score @s cgame_score = #minscore cgame_score run team join cgame_increment @s

# In case a player kills the solo ("tagged") runner, the killer becomes a new runner
execute if entity @a[team=cgame_increment,scores={game_on=1,ctime_DeathCount=2}] run team join cgame_increment @a[team=cgame_regular,scores={game_on=1,cgame_kill_detect=1..}]

# If the solo ("tagged") player dies, he becomes a regular player again
team join cgame_regular @a[team=cgame_increment,scores={game_on=1,ctime_DeathCount=2}]

# If the game features a cursed runner, any other (regular) player that dies gets the curse
execute if entity @a[team=cgame_decrement,scores={game_on=1}] run team join cgame_decrement @a[team=cgame_regular,scores={game_on=1,ctime_DeathCount=2}]
execute if entity @a[team=cgame_regular,scores={game_on=1,ctime_DeathCount=2}] run team join cgame_regular @a[team=cgame_decrement,scores={game_on=1}]



#### DEBUG
#execute as @a[scores={cgame_kill_detect=1..}] run say "@s killed someone"
#execute as @a[scores={cgame_kill_detect=1..}] as @a[team=cgame_increment] run say "@s is tagged"


