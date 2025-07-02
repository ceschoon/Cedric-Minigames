
team join cgame_regular @a[scores={cgame_on=1,cgame_starting_team=0}]
team join cgame_increment @a[scores={cgame_on=1,cgame_starting_team=1}]
team join cgame_decrement @a[scores={cgame_on=1,cgame_starting_team=2}]

#################

#execute as @a[scores={cgame_on=1}] if items entity @s container.* paper[lore=['{"text":"Role: Regular","color":dark_red,"italic":false}'],enchantment_glint_override=true] run team join cgame_regular @s

#execute as @a[scores={cgame_on=1}] if items entity @s container.* paper[lore=['{"text":"Role: Chased Tag","color":gold,"italic":false}'],enchantment_glint_override=true] run team join cgame_increment @s

#execute as @a[scores={cgame_on=1}] if items entity @s container.* paper[lore=['{"text":"Role: Cursed Tag","color":dark_purple,"italic":false}'],enchantment_glint_override=true] run team join cgame_decrement @s

#clear @a[scores={cgame_on=1}] paper[enchantment_glint_override=true]
