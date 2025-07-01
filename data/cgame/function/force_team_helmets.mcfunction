
execute as @a[scores={cgame_on=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if entity @s[team=cgame_increment] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run item replace entity @s armor.head with golden_helmet[enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}}]

execute as @a[scores={cgame_on=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if entity @s[team=cgame_decrement] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color={rgb:1780255},enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}}]

execute as @a[scores={cgame_on=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if entity @s[team=cgame_regular] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color={rgb:16711680},enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}}]

execute as @a[scores={cgame_on=1}] if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with air


