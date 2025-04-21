
scoreboard players set @a[scores={duels_SetId=10..}] duels_SetId 0
scoreboard players set @a[scores={duels_SetId=..-1}] duels_SetId 9

clear @s

execute if entity @s[scores={duels_SetId=0}] run function duels:sets/giveset_0
execute if entity @s[scores={duels_SetId=1}] run function duels:sets/giveset_1
execute if entity @s[scores={duels_SetId=2}] run function duels:sets/giveset_2
execute if entity @s[scores={duels_SetId=3}] run function duels:sets/giveset_3
execute if entity @s[scores={duels_SetId=4}] run function duels:sets/giveset_4
execute if entity @s[scores={duels_SetId=5}] run function duels:sets/giveset_5
execute if entity @s[scores={duels_SetId=6}] run function duels:sets/giveset_6
execute if entity @s[scores={duels_SetId=7}] run function duels:sets/giveset_7
execute if entity @s[scores={duels_SetId=8}] run function duels:sets/giveset_8
execute if entity @s[scores={duels_SetId=9}] run function duels:sets/giveset_9

