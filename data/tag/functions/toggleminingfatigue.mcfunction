
scoreboard players set @a[scores={tag_mining_fatigue=0}] tag_mining_fatigue 10
scoreboard players set @a[scores={tag_mining_fatigue=1}] tag_mining_fatigue 11
scoreboard players set @a[scores={tag_mining_fatigue=10}] tag_mining_fatigue 1
scoreboard players set @a[scores={tag_mining_fatigue=11}] tag_mining_fatigue 0

tellraw @a[scores={tag_mining_fatigue=0}] [{"text":"Tag: Mining fatigue deactivated!","color":"gold"}]
tellraw @a[scores={tag_mining_fatigue=1}] [{"text":"Tag: Mining fatigue activated!","color":"gold"}]

