
# display menu
tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Permanent Effects module]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function permeffects:menu"}}]

scoreboard players set @a[scores={permeffects_glowing=2..}] permeffects_glowing 0
scoreboard players set @a[scores={permeffects_darkness=2..}] permeffects_darkness 0
scoreboard players set @a[scores={permeffects_darknight=2..}] permeffects_darknight 0
scoreboard players set @a[scores={permeffects_invisibility=2..}] permeffects_invisibility 0
scoreboard players set @a[scores={permeffects_night_vision=2..}] permeffects_night_vision 0
scoreboard players set @a[scores={permeffects_saturation=2..}] permeffects_saturation 0
scoreboard players set @a[scores={permeffects_water_breathing=2..}] permeffects_water_breathing 0

effect give @a[scores={permeffects_glowing=1}] glowing 11 1 false
effect give @a[scores={permeffects_darkness=1}] darkness 11 1 false
effect give @a[scores={permeffects_invisibility=1}] invisibility 11 1 false
effect give @a[scores={permeffects_night_vision=1}] night_vision 11 1 false
effect give @a[scores={permeffects_saturation=1}] saturation 11 1 false
effect give @a[scores={permeffects_water_breathing=1}] water_breathing 11 1 false

execute if predicate ctime:is_deep_night run effect give @a[scores={permeffects_darknight=1}] darkness 11 1 false
execute unless predicate ctime:is_deep_night run effect clear @a[scores={permeffects_darkness=0,permeffects_darknight=1}] darkness


