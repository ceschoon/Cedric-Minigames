
scoreboard players set @a[scores={pltf_nofireballs=0}] pltf_nofireballs 10
scoreboard players set @a[scores={pltf_nofireballs=1}] pltf_nofireballs 11
scoreboard players set @a[scores={pltf_nofireballs=10}] pltf_nofireballs 1
scoreboard players set @a[scores={pltf_nofireballs=11}] pltf_nofireballs 0

tellraw @a[scores={pltf_nofireballs=0}] [{"text":"Platforms: Fireballs reactivated","color":"gold"}]
tellraw @a[scores={pltf_nofireballs=1}] [{"text":"Platforms: Fireballs deactivated","color":"gold"}]

