
# platform and space above
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian
fill ~-2 ~ ~-2 ~2 ~2 ~2 air

# ores in platform
setblock ~ ~-1 ~ emerald_block
setblock ~ ~-1 ~1 emerald_ore
setblock ~-2 ~-1 ~1 emerald_ore
setblock ~1 ~-1 ~-2 emerald_ore

# ore layers under platform
fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 emerald_ore
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 emerald_ore

# details in ore layer -2
setblock ~-2 ~-2 ~ emerald_ore
setblock ~-2 ~-2 ~1 emerald_block
setblock ~2 ~-2 ~1 emerald_ore
setblock ~2 ~-2 ~ emerald_block
setblock ~ ~-2 ~2 emerald_ore
setblock ~1 ~-2 ~2 emerald_ore 
setblock ~2 ~-2 ~2 emerald_ore
setblock ~1 ~-2 ~-2 emerald_block
setblock ~ ~-2 ~2 emerald_ore

# details in ore layer -3
setblock ~1 ~-3 ~1 air
setblock ~-1 ~-3 ~-1 air
setblock ~ ~-3 ~1 emerald_block

# details in ore layers -4 and -5
setblock ~ ~-4 ~ emerald_block
setblock ~ ~-4 ~1 emerald_ore
setblock ~ ~-5 ~ emerald_ore
