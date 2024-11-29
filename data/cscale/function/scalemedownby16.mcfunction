
## Clear attribute modifiers
function cscale:unscaleme

## Add-Multiply base by 1/scale-1 (1+x=1/scale <=> x=1/scale-1)
attribute @s minecraft:generic.scale modifier add myscale1 -0.9375 add_multiplied_base
attribute @s minecraft:generic.step_height modifier add myscale1 -0.9375 add_multiplied_base
attribute @s minecraft:generic.safe_fall_distance modifier add myscale1 -0.9375 add_multiplied_base
attribute @s minecraft:player.block_interaction_range modifier add myscale1 -0.9375 add_multiplied_base
attribute @s minecraft:player.entity_interaction_range modifier add myscale1 -0.9375 add_multiplied_base

## Add-Multiply base by 1/scale^.5-1 (1+x=1/scale^.5 <=> x=1/scale^.5-1)
attribute @s minecraft:generic.movement_speed modifier add myscale1 -0.75 add_multiplied_base
attribute @s minecraft:generic.jump_strength modifier add myscale1 -0.75 add_multiplied_base

## Add-Multiply base by scale-1 (1+x=scale <=> x=scale-1)
attribute @s minecraft:generic.fall_damage_multiplier modifier add myscale1 15.0 add_multiplied_base
