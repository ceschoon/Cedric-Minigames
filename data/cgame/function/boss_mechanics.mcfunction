
## Bossbar 

execute unless entity @a[team=cgame_boss,scores={cgame_on=1}] run bossbar remove playerboss
execute if entity @a[team=cgame_boss,scores={cgame_on=1}] run bossbar add playerboss {"text":"Boss Health","color":"light_purple"}

bossbar set playerboss players @a[scores={cgame_on=1}]
bossbar set playerboss color pink

execute store result bossbar playerboss max run attribute @p[team=cgame_boss,scores={cgame_on=1}] minecraft:max_health base get
execute store result bossbar playerboss value run data get entity @p[team=cgame_boss,scores={cgame_on=1}] Health


## Other things
## Note: I removed the max_health modification because it conflicts with life crystals

item replace entity @a[team=cgame_boss,scores={cgame_on=1}] hotbar.8 with baked_potato 64

execute as @a[team=cgame_boss,scores={cgame_on=1}] at @s run spawnpoint @s ~ ~ ~

