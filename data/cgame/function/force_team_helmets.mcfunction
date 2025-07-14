
## Color integer calc as Red<<16 + Green<<8 + Blue
## TODO: replace helmet even if there is one already (this is not a problem, see hunters)

execute as @a[team=cgame_regular,scores={cgame_on=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",components:{"minecraft:dyed_color":{rgb:8421504}}}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8421504,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}}]

execute as @a[team=cgame_increment,scores={cgame_on=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run item replace entity @s armor.head with golden_helmet[enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}}]

execute as @a[team=cgame_decrement,scores={cgame_on=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",components:{"minecraft:dyed_color":{rgb:11546150}}}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=11546150,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}}]

## No helmet for the boss (there is a magical helmet), he is glowing anyway

## Upgrade the helmet of hunters, depending on their kill streak
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=0}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}}]
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1,"minecraft:protection":2}}]
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=2}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1,"minecraft:protection":4}}]
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=3}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1,"minecraft:protection":6}}]
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=4}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1,"minecraft:protection":8}}]
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=5}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1,"minecraft:protection":10}}]

execute as @a[scores={cgame_on=1}] if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with air

