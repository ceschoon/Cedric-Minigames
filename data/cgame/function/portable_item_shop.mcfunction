
## Give item with:
## give @s creeper_banner_pattern[lore=[{text:'Portable Item Shop',underlined:false,bold:false,italic:false}],enchantment_glint_override=true]

## Keep in hotbar with:
item replace entity @a[team=cgame_hunter,scores={cgame_on=1}] hotbar.8 with creeper_banner_pattern[lore=[{text:'Portable Item Shop',underlined:false,bold:false,italic:false}],enchantment_glint_override=true]

## Note: The order of components matters in the JSON component lists below !!
## Use the NBT to SNBT conversion tool of the vanilla jar to generate it, see:
## https://minecraft.wiki/w/Tutorial:Running_the_data_generator#Generating_stringified_server_DAT_files

execute as @a[nbt={SelectedItem:{components:{"minecraft:enchantment_glint_override":1b,"minecraft:lore":[{bold:false,italic:false,text:'Portable Item Shop',underlined:false}]}}}] at @s unless entity @e[type=villager,tag=cgame_portable_item_shop,distance=..3] run summon villager ~ ~ ~ {Tags:['cgame_portable_item_shop'],VillagerData:{profession:cleric,level:5,type:savanna},NoAI:1b,Invulnerable:1b,Silent:1b,active_effects:[{id:invisibility,duration:-1,show_particles:0b}],Offers:{Recipes:[{buy:{id:amethyst_shard,count:2,components:{"minecraft:enchantment_glint_override":1b,"minecraft:lore":[{italic:false,text:'Life crystal'}]}},sell:{id:bell,count:1},xp:1,maxUses:999999},{buy:{id:amethyst_shard,count:2,components:{"minecraft:enchantment_glint_override":1b,"minecraft:lore":[{italic:false,text:'Life crystal'}]}},sell:{id:paper,count:1,components:{"minecraft:enchantment_glint_override":1b,"minecraft:lore":[{italic:false,text:'Ticket for a random gift'}]}},xp:20,maxUses:999999},{buy:{id:amethyst_shard,count:1,components:{"minecraft:enchantment_glint_override":1b,"minecraft:lore":[{italic:false,text:'Life crystal'}]}},sell:{id:cooked_beef,count:8},xp:10,maxUses:999999},{buy:{id:amethyst_shard,count:1,components:{"minecraft:enchantment_glint_override":1b,"minecraft:lore":[{italic:false,text:'Life crystal'}]}},sell:{id:iron_ingot,count:3},xp:10,maxUses:999999}]}}

execute as @a[nbt={SelectedItem:{components:{"minecraft:enchantment_glint_override":1b,"minecraft:lore":[{bold:false,italic:false,text:'Portable Item Shop',underlined:false}]}}}] at @s run tp @e[type=villager,tag=cgame_portable_item_shop,distance=0.1..3] ~ ~ ~

execute as @e[type=villager,tag=cgame_portable_item_shop] at @s unless entity @a[nbt={SelectedItem:{components:{"minecraft:enchantment_glint_override":1b,"minecraft:lore":[{bold:false,italic:false,text:'Portable Item Shop',underlined:false}]}}},distance=..3] run tp @s ~ ~-50 ~
execute as @e[type=villager,tag=cgame_portable_item_shop] at @s unless entity @a[nbt={SelectedItem:{components:{"minecraft:enchantment_glint_override":1b,"minecraft:lore":[{bold:false,italic:false,text:'Portable Item Shop',underlined:false}]}}},distance=..10] run kill @s

team join cgame_portable_item_shop @e[type=villager,tag=cgame_portable_item_shop]
