
## Detect when a player bought the ink sac
scoreboard objectives remove temp
scoreboard objectives add temp dummy
scoreboard players set @a temp 0
execute as @a if entity @s[scores={pltf_DelayBlind=..0}] store success score @s temp run clear @s ink_sac 1

## Give blindness to everyone else
execute as @a[scores={temp=1..}] unless entity @s[team=team1] run effect give @a[team=team1] blindness 11
execute as @a[scores={temp=1..}] unless entity @s[team=team2] run effect give @a[team=team2] blindness 11
execute as @a[scores={temp=1..}] unless entity @s[team=team3] run effect give @a[team=team3] blindness 11
execute as @a[scores={temp=1..}] unless entity @s[team=team4] run effect give @a[team=team4] blindness 11
execute as @a[scores={temp=1..}] run playsound minecraft:entity.generic.splash master @a
execute as @a[scores={temp=1..}] run scoreboard players set @s pltf_DelayBlind 200

