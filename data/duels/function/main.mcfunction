
## Detect death and declare victory of remaining player
team join noteam @a[scores={duels_On=1,ctime_DeathCount=2}]
execute as @a[scores={duels_On=1..},team=team1] unless entity @a[team=team2] run function duels:win
execute as @a[scores={duels_On=1..},team=team2] unless entity @a[team=team1] run function duels:win

## Make players invincible during pauses
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={duels_On=1..}] resistance 1 255

