
# If you are NOT a target: 
# The compass points to the nearest target (beyond 5 blocks)

execute if entity @s[scores={target=0}] if entity @p[scores={target=1,distance=5..}] store result score @s X run data get entity @p[scores={target=1,distance=5..}] Pos[0] 1
execute if entity @s[scores={target=0}] if entity @p[scores={target=1,distance=5..}] store result score @s Y run data get entity @p[scores={target=1,distance=5..}] Pos[1] 1
execute if entity @s[scores={target=0}] if entity @p[scores={target=1,distance=5..}] store result score @s Z run data get entity @p[scores={target=1,distance=5..}] Pos[2] 1

# If you ARE a target: 
# The compass points to the nearest player (beyond 5 blocks)

execute if entity @s[scores={target=1}] if entity @p[scores={distance=5..}] store result score @s X run data get entity @p[scores={distance=5..}] Pos[0] 1
execute if entity @s[scores={target=1}] if entity @p[scores={distance=5..}] store result score @s Y run data get entity @p[scores={distance=5..}] Pos[1] 1
execute if entity @s[scores={target=1}] if entity @p[scores={distance=5..}] store result score @s Z run data get entity @p[scores={distance=5..}] Pos[2] 1

