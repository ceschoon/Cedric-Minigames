
###################################################
## Life crystals give extra hearts

scoreboard players set @s cmagic_num_life_cryst 0

execute store result score @s cmagic_num_life_cryst run clear @s amethyst_shard[lore=[{text:'Life crystal',italic:false}],enchantment_glint_override=1b] 0

attribute @s[scores={cmagic_num_life_cryst=0}] minecraft:max_health base set 20
attribute @s[scores={cmagic_num_life_cryst=1}] minecraft:max_health base set 22
attribute @s[scores={cmagic_num_life_cryst=2}] minecraft:max_health base set 24
attribute @s[scores={cmagic_num_life_cryst=3}] minecraft:max_health base set 26
attribute @s[scores={cmagic_num_life_cryst=4}] minecraft:max_health base set 28
attribute @s[scores={cmagic_num_life_cryst=5}] minecraft:max_health base set 30
attribute @s[scores={cmagic_num_life_cryst=6}] minecraft:max_health base set 32
attribute @s[scores={cmagic_num_life_cryst=7}] minecraft:max_health base set 34
attribute @s[scores={cmagic_num_life_cryst=8}] minecraft:max_health base set 36
attribute @s[scores={cmagic_num_life_cryst=9}] minecraft:max_health base set 38
attribute @s[scores={cmagic_num_life_cryst=10}] minecraft:max_health base set 40


###################################################
## Life crystals are lost upon death

clear @a[scores={ctime_DeathCount=1..}] amethyst_shard[lore=[{text:'Life crystal',italic:false}],enchantment_glint_override=1b]


###################################################
## Life crystals are lost upon death

clear @a[scores={ctime_DeathCount=1..}] amethyst_shard[lore=[{text:'Life crystal',italic:false}],enchantment_glint_override=1b]

