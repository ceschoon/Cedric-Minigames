
#give @s netherite_sword[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true,enchantments={levels:{"fire_aspect":2,"sweeping_edge":3,"looting":3}}]



scoreboard players set @s cmagic_has_magical_item 0
scoreboard players set @s cmagic_has_magical_item2 0
scoreboard players set @s cmagic_num_magical_items 0



## Infinity bow

execute store result score @s cmagic_has_magical_item run clear @s bow[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true] 0
scoreboard players operation @s cmagic_num_magical_items += @s cmagic_has_magical_item

execute store result score @s cmagic_has_magical_item2 run clear @s spectral_arrow 0
give @s[scores={cmagic_has_magical_item=1..,cmagic_has_magical_item2=..1}] spectral_arrow 1



## Lightning trident

#execute store result score @s cmagic_has_magical_item run clear @s trident[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true] 0
#scoreboard players operation @s cmagic_num_magical_items += @s cmagic_has_magical_item

#execute if entity @s[scores={cmagic_has_magical_item=1..},nbt={SelectedItem:{id:"minecraft:trident"}}] run weather thunder 1s



## Mace windy

execute store result score @s cmagic_has_magical_item run clear @s mace[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true] 0
scoreboard players operation @s cmagic_num_magical_items += @s cmagic_has_magical_item

#execute store result score @s cmagic_has_magical_item2 run clear @s wind_charge 0
#give @s[scores={cmagic_has_magical_item=1..,cmagic_has_magical_item2=..1}] wind_charge 1

effect give @s[scores={cmagic_has_magical_item=1..},nbt={SelectedItem:{id:"minecraft:mace"}}] jump_boost 1 3
effect give @s[scores={cmagic_has_magical_item=1..},nbt={SelectedItem:{id:"minecraft:mace"}}] slowness 1 0



## Fire sword

execute store result score @s cmagic_has_magical_item run clear @s netherite_sword[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true] 0
scoreboard players operation @s cmagic_num_magical_items += @s cmagic_has_magical_item

effect give @s[scores={cmagic_has_magical_item=1..}] fire_resistance 1 0



## Fortune pick

execute store result score @s cmagic_has_magical_item run clear @s netherite_pickaxe[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true] 0
scoreboard players operation @s cmagic_num_magical_items += @s cmagic_has_magical_item

effect give @s[scores={cmagic_has_magical_item=1..}] haste 1 0
#effect give @s[scores={cmagic_has_magical_item=1..}] luck 1 0 #would interfere with infected minigame??



## Turtle helmet

execute store result score @s cmagic_has_magical_item run clear @s turtle_helmet[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true] 0
scoreboard players operation @s cmagic_num_magical_items += @s cmagic_has_magical_item

effect give @s[scores={cmagic_has_magical_item=1..}] dolphins_grace 1 0
effect give @s[scores={cmagic_has_magical_item=1..}] conduit_power 1 0



## Wither helmet

execute store result score @s cmagic_has_magical_item run clear @s wither_skeleton_skull[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true] 0
scoreboard players operation @s cmagic_num_magical_items += @s cmagic_has_magical_item

#execute unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s[scores={cmagic_has_magical_item=1..}] wither 2 0
execute at @s[scores={cmagic_has_magical_item=1..}] as @a[distance=..8,scores={cmagic_has_magical_item=0}] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s wither 2 0
execute at @s[scores={cmagic_has_magical_item=1..}] as @e[distance=..8,type=!player] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s wither 2 0



## Tank armor

execute store result score @s cmagic_has_magical_item run clear @s netherite_chestplate[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true] 0
scoreboard players operation @s cmagic_num_magical_items += @s cmagic_has_magical_item

effect give @s[scores={cmagic_has_magical_item=1..}] resistance 1 1
effect give @s[scores={cmagic_has_magical_item=1..}] slowness 1 0
execute at @s[scores={cmagic_has_magical_item=1..}] run effect give @a[distance=..5,scores={cmagic_has_magical_item=0}] weakness 1 0



## Speedy pants

execute store result score @s cmagic_has_magical_item run clear @s netherite_leggings[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true] 0
scoreboard players operation @s cmagic_num_magical_items += @s cmagic_has_magical_item

effect give @s[scores={cmagic_has_magical_item=1..}] speed 1 0



## Spring boots

execute store result score @s cmagic_has_magical_item run clear @s netherite_boots[lore=['{"text":"CMagic Item","italic":false}'],enchantment_glint_override=true] 0
scoreboard players operation @s cmagic_num_magical_items += @s cmagic_has_magical_item

effect give @s[scores={cmagic_has_magical_item=1..}] jump_boost 1 3
#effect give @s[scores={cmagic_has_magical_item=1..}] slow_falling 1 0



## Enchant particles around magical item holder
execute if entity @s[scores={cmagic_num_magical_items=1..}] run particle enchant ~ ~3.5 ~ 0.0 0.0 0.0 1.0 1



## Enchant particles around magical item entity
execute as @e[type=item,nbt={Item:{components:{"minecraft:lore":['{"italic":false,"text":"CMagic Item"}'],"minecraft:enchantment_glint_override":1b}}}] at @s run particle enchant ~ ~1 ~ 0.0 0.0 0.0 1.0 1



## Playsound around magical item entity
execute as @e[type=item,nbt={Item:{components:{"minecraft:lore":['{"italic":false,"text":"CMagic Item"}'],"minecraft:enchantment_glint_override":1b}}}] at @s if entity @p[scores={ctime_TicksInSec=0}] run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 2.0
