
fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 iron_block
fill ~ ~ ~ ~ ~3 ~ air

fill ~-3 ~ ~-3 ~-3 ~ ~3 oak_fence
fill ~3 ~ ~-3 ~3 ~ ~3 oak_fence
fill ~-3 ~ ~3 ~3 ~ ~3 oak_fence

setblock ~-2 ~ ~-3 oak_fence
setblock ~2 ~ ~-3 oak_fence

setblock ~-1 ~ ~-3 oak_fence_gate[facing=north] keep
setblock ~ ~ ~-3 oak_fence_gate[facing=north] keep
setblock ~1 ~ ~-3 oak_fence_gate[facing=north] keep

setblock ~ ~-1 ~ yellow_wool

setblock ~-3 ~-1 ~-3 sea_lantern
setblock ~-3 ~-1 ~3 sea_lantern
setblock ~3 ~-1 ~-3 sea_lantern
setblock ~3 ~-1 ~3 sea_lantern

execute if block ~ ~ ~2 air run setblock ~ ~ ~2 chest[facing=north] keep
