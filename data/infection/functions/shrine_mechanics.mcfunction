# shrine particles to indicate frame location
execute if entity @a[scores={shrine_active=1}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~ ~ ~ 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker obsidian ~ ~ ~ 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~-2 ~ ~-2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~-1 ~ ~-2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~ ~ ~-2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~1 ~ ~-2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~2 ~ ~-2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~2 ~ ~-1 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~-2 ~ ~-1 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~2 ~ ~ 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~-2 ~ ~ 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~2 ~ ~1 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~-2 ~ ~1 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~-2 ~ ~2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~-1 ~ ~2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~ ~ ~2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~1 ~ ~2 0 0 0 0.0 1 normal
execute if entity @a[scores={shrine_active=0}] at @e[type=armor_stand,name=shrine] run particle minecraft:block_marker copper_block ~2 ~ ~2 0 0 0 0.0 1 normal

# make sure no one places obsidian in place of the copper blocks
execute at @e[type=armor_stand,name=shrine] run fill ~-2 ~ ~-2 ~2 ~ ~-2 air replace obsidian
execute at @e[type=armor_stand,name=shrine] run fill ~-2 ~ ~-2 ~-2 ~ ~2 air replace obsidian
execute at @e[type=armor_stand,name=shrine] run fill ~2 ~ ~-2 ~2 ~ ~2 air replace obsidian
execute at @e[type=armor_stand,name=shrine] run fill ~-2 ~ ~2 ~2 ~ ~2 air replace obsidian
execute at @e[type=armor_stand,name=shrine] run fill ~-2 ~ ~-2 ~2 ~ ~-2 air replace crying_obsidian
execute at @e[type=armor_stand,name=shrine] run fill ~-2 ~ ~-2 ~-2 ~ ~2 air replace crying_obsidian
execute at @e[type=armor_stand,name=shrine] run fill ~2 ~ ~-2 ~2 ~ ~2 air replace crying_obsidian
execute at @e[type=armor_stand,name=shrine] run fill ~-2 ~ ~2 ~2 ~ ~2 air replace crying_obsidian

# shrine building progression
scoreboard objectives remove shrine_level
scoreboard objectives add shrine_level dummy
scoreboard players set @a shrine_level 0
execute at @e[type=armor_stand,name=shrine] if block ~-2 ~ ~-2 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-1 ~ ~-2 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~ ~ ~-2 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~1 ~ ~-2 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~2 ~ ~-2 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-2 ~ ~-1 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~2 ~ ~-1 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-2 ~ ~ #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~2 ~ ~ #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-2 ~ ~1 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~2 ~ ~1 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-2 ~ ~2 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~-1 ~ ~2 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~ ~ ~2 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~1 ~ ~2 #infection:copper_blocks run scoreboard players add @a shrine_level 1
execute at @e[type=armor_stand,name=shrine] if block ~2 ~ ~2 #infection:copper_blocks run scoreboard players add @a shrine_level 1

# shrine deactivation event (must be processed before checking activation status)
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1,shrine_level=..15}] run summon lightning_bolt ~ ~ ~

# shrine activation (use ctime_TicksInSec to delay the steps)
execute unless entity @a[scores={shrine_level=16..}] run scoreboard players set @a shrine_active 0
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=0,shrine_level=16..}] if block ~ ~ ~ obsidian run scoreboard players set @a shrine_active 11
execute as @a at @s if entity @a[scores={ctime_TicksInSec=0,shrine_active=11}] run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~
execute as @a at @s if entity @a[scores={ctime_TicksInSec=0,shrine_active=11}] run playsound minecraft:entity.evoker.prepare_wololo master @s ~ ~ ~
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=0..,shrine_active=11}] run particle minecraft:scrape ~ ~ ~ 0.9 0.9 0.9 0.05 1 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=5..,shrine_active=11}] run particle minecraft:scrape ~ ~ ~ 0.0 0.0 0.0 10 2 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=10..,shrine_active=11}] run particle minecraft:scrape ~ ~ ~ 0.0 0.0 0.0 20 5 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=15..,shrine_active=11}] run particle minecraft:scrape ~ ~ ~ 0.0 0.0 0.0 30 10 normal
scoreboard players set @a[scores={ctime_TicksInSec=19,shrine_active=11}] shrine_active 1

# shrine frame (when activated)
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1}] run fill ~-2 ~ ~-2 ~2 ~ ~2 oxidized_copper replace #infection:copper_blocks
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1}] run fill ~-1 ~ ~-1 ~1 ~ ~1 air
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1}] run setblock ~ ~ ~ glass

# shrine frame (when deactivated)
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=0}] run fill ~-2 ~ ~-2 ~2 ~ ~2 copper_block replace #infection:copper_blocks

# shrine particles (when activated)
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=0,shrine_active=1}] run playsound minecraft:block.beacon.ambient ambient @a ~ ~10 ~ 10
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=13,shrine_active=1}] run playsound minecraft:block.beacon.activate ambient @a ~ ~10 ~ 3
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=0,shrine_active=1}] run particle minecraft:sonic_boom ~ ~ ~ 0.0 0.0 0.0 0.05 1 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=0,shrine_active=1}] run particle minecraft:sculk_soul ~ ~ ~ 0.5 0.5 0.5 0.05 1 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1}] run particle minecraft:scrape ~ ~ ~ 0.9 0.9 0.9 0.05 1 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=1}] run particle minecraft:scrape ~ ~ ~ 0.0 0.0 0.0 40 20 normal

# shrine particles (when deactivated)
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={ctime_TicksInSec=0,shrine_active=0}] run playsound minecraft:block.portal.ambient ambient @a ~ ~10 ~ 5
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=0}] run particle minecraft:flame ~ ~ ~ 1.2 0.4 1.2 0.01 1 normal
execute at @e[type=armor_stand,name=shrine] if entity @a[scores={shrine_active=0}] run particle minecraft:portal ~ ~ ~ 0 0 0 20.0 40 normal


