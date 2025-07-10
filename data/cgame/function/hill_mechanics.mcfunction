
# Reset platform
execute at @e[type=armor_stand,name=cgame_hill] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian

# Detect presence on/off platform
scoreboard players set @a cgame_is_on_hill 0
execute at @e[type=armor_stand,name=cgame_hill] as @a[distance=..5,scores={cgame_on=1}] at @s if block ~ ~-1 ~ obsidian run scoreboard players set @s cgame_is_on_hill 1
execute at @e[type=armor_stand,name=cgame_hill] as @a[distance=..5,scores={cgame_on=1}] at @s if block ~ ~-2 ~ obsidian run scoreboard players set @s cgame_is_on_hill 1


