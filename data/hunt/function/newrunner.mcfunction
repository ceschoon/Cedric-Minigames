# Executed by to-become new runner

team join hunt_hunter @a[scores={hunt_On=1..}]
team join hunt_runner @s

scoreboard players set @a[scores={hunt_On=1..}] hunt_Hunted 0
scoreboard players set @s hunt_Hunted 1

function compass:trackme
