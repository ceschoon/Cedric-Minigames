
###########################################################
## Kit 1: Diamond tools, enchanted

execute if score #cgame_starter_kit cgame_setting matches 1 run give @a[scores={cgame_on=1}] diamond_pickaxe[enchantments={levels:{"minecraft:efficiency":5}}]
execute if score #cgame_starter_kit cgame_setting matches 1 run give @a[scores={cgame_on=1}] diamond_axe[enchantments={levels:{"minecraft:efficiency":5}}]
execute if score #cgame_starter_kit cgame_setting matches 1 run give @a[scores={cgame_on=1}] diamond_sword[enchantments={levels:{"minecraft:fire_aspect":1}}]
execute if score #cgame_starter_kit cgame_setting matches 1 run give @a[scores={cgame_on=1}] diamond_shovel[enchantments={levels:{"minecraft:efficiency":5}}]
execute if score #cgame_starter_kit cgame_setting matches 1 run give @a[scores={cgame_on=1}] diamond_hoe[enchantments={levels:{"minecraft:efficiency":5,"silk_touch":1}}]


###########################################################
## Starting items for the fake cultist

loot give @s[scores={cgame_on=1,cgame_is_fake_cultist=1}] loot cmagic:starter_kit
item replace entity @s[scores={cgame_on=1,cgame_is_fake_cultist=1}] inventory.26 with golden_helmet[lore=['{"text":"You are an impostor in this team.","italic":false}','{"text":"Your objective is to kill all your team mates.","italic":false}','{"text":"Remove your green helmet to reveal yourself as a regular (non-glowing) player.","italic":false}'],enchantment_glint_override=true]


