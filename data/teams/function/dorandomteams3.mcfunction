# Temporary team for player not assigned in teams to fill
team remove noteam
team add noteam
execute as @a unless entity @s[scores={cfp_is_fake_player=1}] run team join noteam @s

# Fill teams (up to 24 players)
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team3 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team3 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team3 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team3 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team3 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team3 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team3 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team3 @s
