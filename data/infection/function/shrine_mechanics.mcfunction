# shrine particles to indicate frame location
execute if score #shrine_active inf_variable matches 1 run particle block_marker{block_state:{Name:obsidian}} ~ ~ ~ 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:obsidian}} ~ ~ ~ 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~-2 ~ ~-2 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~-1 ~ ~-2 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~ ~ ~-2 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~1 ~ ~-2 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~2 ~ ~-2 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~2 ~ ~-1 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~-2 ~ ~-1 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~2 ~ ~ 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~-2 ~ ~ 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~2 ~ ~1 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~-2 ~ ~1 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~-2 ~ ~2 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~-1 ~ ~2 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~ ~ ~2 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~1 ~ ~2 0 0 0 0.0 1 normal
execute if score #shrine_active inf_variable matches 0 run particle block_marker{block_state:{Name:copper_block}} ~2 ~ ~2 0 0 0 0.0 1 normal

# make sure no one places obsidian in place of the copper blocks
fill ~-2 ~ ~-2 ~2 ~ ~-2 air replace obsidian
fill ~-2 ~ ~-2 ~-2 ~ ~2 air replace obsidian
fill ~2 ~ ~-2 ~2 ~ ~2 air replace obsidian
fill ~-2 ~ ~2 ~2 ~ ~2 air replace obsidian
fill ~-2 ~ ~-2 ~2 ~ ~-2 air replace crying_obsidian
fill ~-2 ~ ~-2 ~-2 ~ ~2 air replace crying_obsidian
fill ~2 ~ ~-2 ~2 ~ ~2 air replace crying_obsidian
fill ~-2 ~ ~2 ~2 ~ ~2 air replace crying_obsidian

# shrine building progression
scoreboard players set #shrine_level inf_variable 0
execute if block ~-2 ~ ~-2 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~-1 ~ ~-2 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~ ~ ~-2 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~1 ~ ~-2 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~2 ~ ~-2 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~-2 ~ ~-1 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~2 ~ ~-1 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~-2 ~ ~ #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~2 ~ ~ #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~-2 ~ ~1 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~2 ~ ~1 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~-2 ~ ~2 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~-1 ~ ~2 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~ ~ ~2 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~1 ~ ~2 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1
execute if block ~2 ~ ~2 #infection:copper_blocks run scoreboard players add #shrine_level inf_variable 1

# shrine deactivation event (must be processed before checking activation status)
execute if score #shrine_active inf_variable matches 1 if score #shrine_level inf_variable matches ..15 run summon lightning_bolt ~ ~ ~

# shrine activation status
execute unless score #shrine_level inf_variable matches 16.. run scoreboard players set #shrine_active inf_variable 0
execute if score #shrine_level inf_variable matches 16.. if score #ctime_TicksInSec ctime_variable matches 0 if block ~ ~ ~ obsidian run scoreboard players set #shrine_active inf_variable 11

# shrine activation effects (use ctime_TicksInSec to delay the steps)
execute if score #shrine_active inf_variable matches 11 if score #ctime_TicksInSec ctime_variable matches 0 as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~
execute if score #shrine_active inf_variable matches 11 if score #ctime_TicksInSec ctime_variable matches 0 as @a at @s run playsound minecraft:entity.evoker.prepare_wololo master @s ~ ~ ~
execute if score #shrine_active inf_variable matches 11 if score #ctime_TicksInSec ctime_variable matches 0.. run particle minecraft:scrape ~ ~ ~ 0.9 0.9 0.9 0.05 1 normal
execute if score #shrine_active inf_variable matches 11 if score #ctime_TicksInSec ctime_variable matches 5.. run particle minecraft:scrape ~ ~ ~ 0.0 0.0 0.0 10 2 normal
execute if score #shrine_active inf_variable matches 11 if score #ctime_TicksInSec ctime_variable matches 10.. run particle minecraft:scrape ~ ~ ~ 0.0 0.0 0.0 20 5 normal
execute if score #shrine_active inf_variable matches 11 if score #ctime_TicksInSec ctime_variable matches 15.. run particle minecraft:scrape ~ ~ ~ 0.0 0.0 0.0 30 10 normal
execute if score #shrine_active inf_variable matches 11 if score #ctime_TicksInSec ctime_variable matches 19 run scoreboard players set #shrine_active inf_variable 1

# shrine frame (when activated)
execute if score #shrine_active inf_variable matches 1 run fill ~-2 ~ ~-2 ~2 ~ ~2 oxidized_copper replace #infection:copper_blocks
execute if score #shrine_active inf_variable matches 1 run fill ~-1 ~ ~-1 ~1 ~ ~1 air
execute if score #shrine_active inf_variable matches 1 run setblock ~ ~ ~ glass

# shrine frame (when deactivated)
execute if score #shrine_active inf_variable matches 0 run fill ~-2 ~ ~-2 ~2 ~ ~2 copper_block replace #infection:copper_blocks

# shrine particles (when activated)
execute if score #shrine_active inf_variable matches 1 if score #ctime_TicksInSec ctime_variable matches 0 run playsound minecraft:block.beacon.ambient ambient @a ~ ~10 ~ 10
execute if score #shrine_active inf_variable matches 1 if score #ctime_TicksInSec ctime_variable matches 13 run playsound minecraft:block.beacon.activate ambient @a ~ ~10 ~ 3
execute if score #shrine_active inf_variable matches 1 if score #ctime_TicksInSec ctime_variable matches 0 run particle minecraft:sonic_boom ~ ~ ~ 0.0 0.0 0.0 0.05 1 normal
execute if score #shrine_active inf_variable matches 1 if score #ctime_TicksInSec ctime_variable matches 0 run particle minecraft:sculk_soul ~ ~ ~ 0.5 0.5 0.5 0.05 1 normal
execute if score #shrine_active inf_variable matches 1 run particle minecraft:scrape ~ ~ ~ 0.9 0.9 0.9 0.05 1 normal
execute if score #shrine_active inf_variable matches 1 run particle minecraft:scrape ~ ~ ~ 0.0 0.0 0.0 40 20 normal

# shrine particles (when deactivated)
execute if score #shrine_active inf_variable matches 0 if score #ctime_TicksInSec ctime_variable matches 0 run playsound minecraft:block.portal.ambient ambient @a ~ ~10 ~ 5
execute if score #shrine_active inf_variable matches 0 run particle minecraft:flame ~ ~ ~ 1.2 0.4 1.2 0.01 1 normal
execute if score #shrine_active inf_variable matches 0 run particle minecraft:portal ~ ~ ~ 0 0 0 20.0 40 normal

# shrine effects
effect give @a[team=sane,distance=..8] minecraft:haste 5 4 false
effect give @a[team=infected,distance=..8] minecraft:mining_fatigue 5 2 false
execute if score #shrine_active inf_variable matches 0 run effect give @a[team=sane,distance=..8] minecraft:weakness 5 0 false
execute if score #shrine_active inf_variable matches 1 run effect give @a[team=infected,distance=..8] minecraft:weakness 5 0 false
execute if score #shrine_active inf_variable matches 0 if score #ctime_TicksInSec ctime_variable matches 15 run summon area_effect_cloud ~ ~ ~ {Particle:{type:flame},potion_contents:{custom_effects:[{id:instant_damage,duration:10,show_particles:1b,show_icon:1b}]},Radius:2.5,RadiusPerTick:-0.0,Duration:10}

#execute if score #shrine_active inf_variable matches 0 run weather rain 1d
execute if score #shrine_active inf_variable matches 1 run weather clear 1d

# shrine item generator
execute if score #shrine_active inf_variable matches 1 if score #ctime_TicksInSec ctime_variable matches 0 run summon item ~ ~1 ~ {Item:{id:"splash_potion",count:1,components:{potion_contents:{potion:"luck"}}}}
execute if score #shrine_active inf_variable matches 1 if score #ctime_TicksInSec ctime_variable matches 10 run kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}},distance=..2]
