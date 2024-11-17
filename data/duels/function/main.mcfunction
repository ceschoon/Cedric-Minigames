
## Cycle sets
scoreboard players set @a[scores={duels_SetId=10..}] duels_SetId 0
scoreboard players set @a[scores={duels_SetId=..-1}] duels_SetId 9

## Detect death and declare victory of remaining player
team join noteam @a[scores={duels_On=1,ctime_DeathCount=5}]
execute as @a[scores={duels_On=1..},team=team1] unless entity @a[team=team2] run function duels:win
execute as @a[scores={duels_On=1..},team=team2] unless entity @a[team=team1] run function duels:win

## Make players invincible during pauses
effect give @a[scores={ctime_Pause=1}] resistance 1 255

