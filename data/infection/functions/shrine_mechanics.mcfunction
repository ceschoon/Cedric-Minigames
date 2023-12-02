# shrine particles to indicate frame location
execute if entity @a[scores={shrine_active=1}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~ ~ ~ 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~ ~ ~ 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~-2 ~ ~-2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~-1 ~ ~-2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~ ~ ~-2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~1 ~ ~-2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~2 ~ ~-2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~2 ~ ~-1 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~-2 ~ ~-1 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~2 ~ ~ 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~-2 ~ ~ 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~2 ~ ~1 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~-2 ~ ~1 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~-2 ~ ~2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~-1 ~ ~2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~ ~ ~2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~1 ~ ~2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~2 ~ ~2 0 0 0 0.0 1 normal

# shrine building progression
scoreboard objectives remove shrine_level
scoreboard objectives add shrine_level dummy
scoreboard players set @a shrine_level 0
execute at @e[type=armor_stand,name=shrine] if block ~-2 ~ ~-2 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-1 ~ ~-2 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~ ~ ~-2 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~1 ~ ~-2 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~2 ~ ~-2 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-2 ~ ~-1 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~2 ~ ~-1 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-2 ~ ~ obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~2 ~ ~ obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-2 ~ ~1 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~2 ~ ~1 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-2 ~ ~2 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-1 ~ ~2 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~ ~ ~2 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~1 ~ ~2 obsidian run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~2 ~ ~2 obsidian run scoreboard players add @a shrine_level 1

# shrine activation
execute unless entity @a[scores={shrine_level=16..}] run scoreboard players set @a shrine_active 0
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=0,shrine_level=16..}] if block ~ ~ ~ copper_block run summon lightning_bolt ~ ~ ~
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=0,shrine_level=16..}] if block ~ ~ ~ copper_block run scoreboard players set @a shrine_active 1
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1}] run fill ~-1 ~ ~-1 ~1 ~ ~1 air
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1}] run setblock ~ ~ ~ glass

# shrine particles
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=0,shrine_active=0}] run playsound minecraft:block.portal.ambient ambient @a ~ ~10 ~ 5
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=0,shrine_active=1}] run playsound minecraft:block.beacon.ambient ambient @a ~ ~10 ~ 10
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=15,shrine_active=1}] run playsound minecraft:block.beacon.activate ambient @a ~ ~10 ~ 2
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=0,shrine_active=1}] run particle minecraft:sonic_boom ~ ~ ~ 0.0 0.0 0.0 0.05 1 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=0,shrine_active=1}] run particle minecraft:sculk_soul ~ ~ ~ 0.5 0.5 0.5 0.05 1 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1}] run particle minecraft:scrape ~ ~ ~ 0.9 0.9 0.9 0.05 1 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1}] run particle minecraft:scrape ~ ~ ~ 0.0 0.0 0.0 40 20 normal
#execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1}] run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 20.0 40 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=0}] run particle minecraft:portal ~ ~ ~ 0 0 0 20.0 40 normal
