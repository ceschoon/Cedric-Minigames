
scoreboard players set @a[scores={tag_kill_rewards=0}] tag_kill_rewards 10
scoreboard players set @a[scores={tag_kill_rewards=1}] tag_kill_rewards 11
scoreboard players set @a[scores={tag_kill_rewards=10}] tag_kill_rewards 1
scoreboard players set @a[scores={tag_kill_rewards=11}] tag_kill_rewards 0

tellraw @a[scores={tag_kill_rewards=0}] [{"text":"Tag: Kill rewards deactivated!","color":"gold"}]
tellraw @a[scores={tag_kill_rewards=1}] [{"text":"Tag: Kill rewards activated!","color":"gold"}]

