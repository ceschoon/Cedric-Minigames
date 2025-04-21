
scoreboard players set @a duels_On 1
scoreboard players set @a[scores={cfp_is_fake_player=1}] duels_On 0

title @a[team=team1] title {"text":"Fight!","color":"gold"}
title @a[team=team2] title {"text":"Fight!","color":"gold"}
tellraw @a {"text":"Duel starts Now!","color":"gold"}

