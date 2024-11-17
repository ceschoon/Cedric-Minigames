
# Bossbar 

bossbar set playerboss players @a
bossbar set playerboss color red
#bossbar set playerboss max 100

execute store result bossbar playerboss max run attribute @p[scores={boss_Who=1}] minecraft:generic.max_health base get
execute store result bossbar playerboss value run data get entity @p[scores={boss_Who=1}] Health
execute unless entity @a[scores={boss_Who=1}] run bossbar set playerboss value 0



# Teams

team join boss_Boss @a[scores={boss_Who=1}]
team join boss_Hunter @a[scores={boss_Who=0}]



# Boss effects, etc.

item replace entity @a[scores={boss_Who=1}] armor.head with red_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:1}]}}
item replace entity @a[scores={boss_Who=1}] hotbar.8 with baked_potato 64
execute at @a[scores={boss_Who=1}] run particle minecraft:flame ~ ~ ~ 1.5 1.5 1.5 0.01 1 normal

effect give @a[scores={boss_Who=1}] jump_boost 10 3
effect give @a[scores={boss_Who=1}] resistance 10 1
effect give @a[scores={boss_Who=1}] fire_resistance 10 1
effect give @a[scores={boss_Who=1}] mining_fatigue 10 0

execute as @a[scores={boss_Who=1}] at @s run spawnpoint @s ~ ~ ~

execute as @a[scores={boss_Who=1}] run attribute @s minecraft:generic.max_health base set 40
execute as @a[scores={boss_Who=0}] run attribute @s minecraft:generic.max_health base set 20



# End of the game
execute if entity @a[scores={boss_Who=1,ctime_DeathCount=5}] run function boss:hunters_win

# For some reason I need to wait a certain amount of time here
scoreboard players add @a[scores={boss_On=2..}] boss_On 1
scoreboard players set @a[scores={boss_On=20}] boss_On 0
