
execute at @e[type=item,nbt={Item:{id:"minecraft:fire_charge",count:1}}] run summon fireball ~ ~ ~ {ExplosionPower:3}
execute at @e[type=fireball] run kill @e[type=item,nbt={Item:{id:"minecraft:fire_charge",count:1}},distance=..3]
