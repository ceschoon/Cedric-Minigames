
fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 iron_block
fill ~ ~ ~ ~ ~3 ~ air

fill ~3 ~ ~-3 ~3 ~ ~3 oak_fence
fill ~-3 ~ ~-3 ~3 ~ ~-3 oak_fence
fill ~-3 ~ ~3 ~3 ~ ~3 oak_fence

setblock ~-3 ~ ~-2 oak_fence
setblock ~-3 ~ ~2 oak_fence

setblock ~-3 ~ ~-1 oak_fence_gate[facing=east] keep
setblock ~-3 ~ ~ oak_fence_gate[facing=east] keep
setblock ~-3 ~ ~1 oak_fence_gate[facing=east] keep

setblock ~ ~-1 ~ red_wool

setblock ~-3 ~-1 ~-3 sea_lantern
setblock ~-3 ~-1 ~3 sea_lantern
setblock ~3 ~-1 ~-3 sea_lantern
setblock ~3 ~-1 ~3 sea_lantern

execute if block ~2 ~ ~ air run setblock ~2 ~ ~ chest[facing=west] keep
