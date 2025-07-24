
## The helmet indicates the role of the player
## It contains a brief description of this role as lore text

## Color integer calc as Red<<16 + Green<<8 + Blue
## TODO: replace helmet even if there is one already (this is not a problem, see hunters)


###########################################################
## Tag games

execute as @a[team=cgame_regular,scores={cgame_on=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",components:{"minecraft:dyed_color":{rgb:8421504}}}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8421504,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}},lore=['{"text":"You are a regular player without any specific role.","italic":false}','{"text":"You can kill the gold player to steal his role or kill the green cultists for a +100 score reward.","italic":false}']]

execute as @a[team=cgame_increment,scores={cgame_on=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run item replace entity @s armor.head with golden_helmet[enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}},lore=['{"text":"You are blessed. Your score will naturally increase over time.","italic":false}','{"text":"However, you will loose this privilege if you die.","italic":false}']]

execute as @a[team=cgame_decrement,scores={cgame_on=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",components:{"minecraft:dyed_color":{rgb:11546150}}}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=11546150,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}},lore=['{"text":"You are cursed. Your score will decrease over time.","italic":false}','{"text":"Get rid of this curse by killing another player. Don't die afterwards!","italic":false}']]


###########################################################
## No helmet for the boss (conflicts with the magical helmet), he is glowing anyway
## TODO: Write the role description elsewhere
###########################################################

###########################################################
## Hunters
## Upgrade the helmet depending on their kill streak

execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=0}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}}]
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1,"minecraft:protection":2}},lore=['{"text":"You are a hunter. Killing other players gives you +100 score and special rewards.","italic":false}']]
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=2}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1,"minecraft:protection":4}},lore=['{"text":"You are a hunter. Killing other players gives you +100 score and special rewards.","italic":false}']]
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=3}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1,"minecraft:protection":6}},lore=['{"text":"You are a hunter. Killing other players gives you +100 score and special rewards.","italic":false}']]
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=4}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1,"minecraft:protection":8}},lore=['{"text":"You are a hunter. Killing other players gives you +100 score and special rewards.","italic":false}']]
execute as @a[team=cgame_hunter,scores={cgame_on=1,cgame_kill_streak=5}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=8991416,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1,"minecraft:protection":10}},lore=['{"text":"You are a hunter. Killing other players gives you +100 score and special rewards.","italic":false}']]


###########################################################
## Cultists

## Fake cultist automatically leaves the cultist team if he removes/replaces his helmet
## Note that we don't allow this in the first second because they don't have their helmet at the start of the game
execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_is_fake_cultist=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",components:{"minecraft:dyed_color":{rgb:65280}}}]}] unless score #ctime_Seconds ctime_variable matches 0 run function cgame:fake_cultist_reveal

execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_is_fake_cultist=0}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",components:{"minecraft:dyed_color":{rgb:65280}}}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=65280,enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}},lore=['{"text":"You are a cultist, in a sect of beacon-builders.","italic":false}','{"text":"Stay close to your teammates and mine copper or gold to build and activate a beacon.","italic":false}','{"text":"Killing an other player will give you the required nether star. But who are you going to sacrifice?","italic":false}','{"text":"Beware! One of your teammates may not have the same objective as you do...","italic":false}']]

execute as @a[team=cgame_cultist,scores={cgame_on=1,cgame_is_fake_cultist=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",components:{"minecraft:dyed_color":{rgb:65280}}}]}] run item replace entity @s armor.head with leather_helmet[dyed_color=65280,enchantments={levels:{"minecraft:vanishing_curse":1}},lore=['{"text":"You are a reasonable person enrolled in a sect of crazy beacon-builders.","italic":false}','{"text":"They want you to mine metals endlessly to build their freaking beacons.","italic":false}','{"text":"This is how they achieve victory. But you will not win this way.","italic":false}','{"text":"Your score will increase by hunting them to the last man. And the dead will join you in your purge.","italic":false}']]


###########################################################
## Last to be processed: remove if invis

execute as @a[scores={cgame_on=1}] if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with air


