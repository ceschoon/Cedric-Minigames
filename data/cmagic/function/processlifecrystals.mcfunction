
scoreboard players set @s num_life_cryst 0

execute store result score @s num_life_cryst run clear @s amethyst_shard[lore=['{"text":"Life crystal","italic":false}'],enchantment_glint_override=true] 0

attribute @s[scores={num_life_cryst=0}] minecraft:generic.max_health base set 20
attribute @s[scores={num_life_cryst=1}] minecraft:generic.max_health base set 22
attribute @s[scores={num_life_cryst=2}] minecraft:generic.max_health base set 24
attribute @s[scores={num_life_cryst=3}] minecraft:generic.max_health base set 26
attribute @s[scores={num_life_cryst=4}] minecraft:generic.max_health base set 28
attribute @s[scores={num_life_cryst=5}] minecraft:generic.max_health base set 30
attribute @s[scores={num_life_cryst=6}] minecraft:generic.max_health base set 32
attribute @s[scores={num_life_cryst=7}] minecraft:generic.max_health base set 34
attribute @s[scores={num_life_cryst=8}] minecraft:generic.max_health base set 36
attribute @s[scores={num_life_cryst=9}] minecraft:generic.max_health base set 38
attribute @s[scores={num_life_cryst=10}] minecraft:generic.max_health base set 40
attribute @s[scores={num_life_cryst=11}] minecraft:generic.max_health base set 42
attribute @s[scores={num_life_cryst=12}] minecraft:generic.max_health base set 44
attribute @s[scores={num_life_cryst=13}] minecraft:generic.max_health base set 46
attribute @s[scores={num_life_cryst=14}] minecraft:generic.max_health base set 48
attribute @s[scores={num_life_cryst=15}] minecraft:generic.max_health base set 50
attribute @s[scores={num_life_cryst=16}] minecraft:generic.max_health base set 52
attribute @s[scores={num_life_cryst=17}] minecraft:generic.max_health base set 54
attribute @s[scores={num_life_cryst=18}] minecraft:generic.max_health base set 56
attribute @s[scores={num_life_cryst=19}] minecraft:generic.max_health base set 58
attribute @s[scores={num_life_cryst=20..}] minecraft:generic.max_health base set 60

