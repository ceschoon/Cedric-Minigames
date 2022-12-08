
# platform and space above
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian
fill ~-2 ~ ~-2 ~2 ~2 ~2 air

# ores in platform
fill ~ ~-1 ~ ~ ~-1 ~ furnace replace air
setblock ~ ~-1 ~1 cobblestone
setblock ~-2 ~-1 ~1 cobblestone
setblock ~1 ~-1 ~-2 crafting_table

# ore layers -2 and -3 under platform
fill ~-1 ~-3 ~-1 ~1 ~-2 ~-1 cobblestone
fill ~-1 ~-3 ~-1 ~-1 ~-2 ~1 cobblestone
fill ~1 ~-3 ~1 ~1 ~-2 ~-1 cobblestone
fill ~1 ~-3 ~1 ~-1 ~-2 ~1 cobblestone

# details in ore layer -2
setblock ~-2 ~-2 ~ cobblestone
fill ~-2 ~-2 ~1 ~-2 ~-2 ~1 furnace replace air
setblock ~2 ~-2 ~1 cobblestone
fill ~2 ~-2 ~ ~2 ~-2 ~ furnace replace air
fill ~ ~-2 ~2 ~ ~-2 ~2 furnace replace air
setblock ~1 ~-2 ~2 cobblestone 
setblock ~2 ~-2 ~2 cobblestone
fill ~1 ~-2 ~-2 ~1 ~-2 ~-2 furnace replace air
fill ~ ~-2 ~2 ~ ~-2 ~2 furnace replace air

# details in ore layer -3
setblock ~1 ~-3 ~1 air
setblock ~ ~-3 ~-1 crafting_table
setblock ~-1 ~-3 ~-1 air
fill ~ ~-3 ~1 ~ ~-3 ~1 furnace replace air

# details in ore layers -4 and -5
fill ~ ~-4 ~ ~ ~-4 ~ furnace replace air
setblock ~ ~-4 ~1 crafting_table
setblock ~ ~-5 ~ cobblestone

# hide ender chest 
execute unless entity @a[scores={pltf_On=1}] run setblock ~ ~-3 ~ ender_chest
setblock ~ ~-2 ~ air
setblock ~ ~-2 ~1 cobblestone_stairs[half=top,facing=east]
setblock ~-1 ~-2 ~1 cobblestone_stairs[half=top,facing=west]
setblock ~-1 ~-2 ~2 cobblestone_slab[type=top]

