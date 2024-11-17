
team empty team1
team empty team2

team join noteam @a
team join team1 @p[team=noteam]
team join team2 @p[team=noteam]

gamemode survival @a[team=!noteam]
clear @a[team=!noteam]

effect clear @a[team=!noteam]
effect give @a[team=!noteam] resistance 5 255
effect give @a[team=!noteam] regeneration 5 255
effect give @a[team=!noteam] saturation 5 255
effect give @a[team=!noteam] slowness 5 255
effect give @a[team=!noteam] weakness 5 255

execute at @e[type=armor_stand,name="Spawn Point Player1"] run spawnpoint @a[team=team1] ~ ~ ~
execute at @e[type=armor_stand,name="Spawn Point Player2"] run spawnpoint @a[team=team2] ~ ~ ~

execute at @e[type=armor_stand,name="Spawn Point Player1"] run tp @a[team=team1] ~ ~ ~
execute at @e[type=armor_stand,name="Spawn Point Player2"] run tp @a[team=team2] ~ ~ ~

execute as @a[team=!noteam] run function duels:givesetfromid

title @a[team=!noteam] title {"text":"Ready?","color":"gold"}
tellraw @a {"text":"Duel starts in 5 seconds","color":"gold"}

