
## Bossbar 

execute unless entity @a[team=cgame_boss,scores={cgame_on=1}] run bossbar remove cgame_boss_health
execute if entity @a[team=cgame_boss,scores={cgame_on=1}] run bossbar add cgame_boss_health {text:'Boss Health',color:light_purple}

bossbar set cgame_boss_health players @a[scores={cgame_on=1}]
bossbar set cgame_boss_health color pink

execute store result bossbar cgame_boss_health max run attribute @p[team=cgame_boss,scores={cgame_on=1}] minecraft:max_health base get
execute store result bossbar cgame_boss_health value run data get entity @p[team=cgame_boss,scores={cgame_on=1}] Health


## Other things
## Note: I removed the max_health modification because it conflicts with life crystals

item replace entity @a[team=cgame_boss,scores={cgame_on=1}] hotbar.8 with baked_potato 64

execute as @a[team=cgame_boss,scores={cgame_on=1}] at @s run spawnpoint @s ~ ~ ~

