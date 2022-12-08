
# Reset platform (obsidian is looks better than bedrock)
execute at @e[type=armor_stand,name=hill] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian

# Detect presence on/off platform
scoreboard objectives remove koth_OnHill
scoreboard objectives add koth_OnHill dummy
scoreboard players set @a koth_OnHill 0
execute at @e[type=armor_stand,name=hill] as @a[distance=..5,scores={koth_On=1}] at @s if block ~ ~-1 ~ obsidian run scoreboard players set @s koth_OnHill 1
execute at @e[type=armor_stand,name=hill] as @a[distance=..5,scores={koth_On=1}] at @s if block ~ ~-2 ~ obsidian run scoreboard players set @s koth_OnHill 1
team join onhill @a[scores={koth_On=1,koth_OnHill=1}]
team join offhill @a[scores={koth_On=1,koth_OnHill=0}]

# detect death and give respawn kit
execute as @a[scores={koth_On=1,ctime_DeathCount=5}] at @s run function koth:giverespawnset

# increment time
scoreboard players add @a[team=onhill,scores={koth_On=1,ctime_TicksInSec=0}] koth_SecondsOnPlatform 1

# detect end of the game
execute as @a[scores={koth_On=1,koth_SecondsOnPlatform=1200}] run function koth:win

