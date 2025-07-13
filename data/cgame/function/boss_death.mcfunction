
execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~
execute as @a at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~
execute at @a[team=cgame_boss,scores={cgame_on=1}] run particle minecraft:flame ~ ~ ~ 3.0 3.0 3.0 0.1 1000 normal
execute at @a[team=cgame_boss,scores={cgame_on=1}] run summon lightning_bolt ~ ~ ~

effect give @a[team=cgame_boss,scores={cgame_on=1}] levitation 10 1
effect give @a[team=cgame_boss,scores={cgame_on=1}] resistance 15 255
