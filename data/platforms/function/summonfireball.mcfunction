
execute at @e[type=item,nbt={Item:{id:"minecraft:fire_charge",Count:1b},PickupDelay:40s}] run summon fireball ~ ~ ~ {ExplosionPower:3}
execute at @e[type=fireball] run kill @e[type=item,nbt={Item:{id:"minecraft:fire_charge",Count:1b},PickupDelay:40s},distance=..3]
