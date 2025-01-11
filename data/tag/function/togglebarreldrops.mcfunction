
scoreboard players set @a[scores={cmagic_barrel_drop_delay=..-1}] cmagic_barrel_drop_delay -2
scoreboard players set @a[scores={cmagic_barrel_drop_delay=0..}] cmagic_barrel_drop_delay -1
scoreboard players set @a[scores={cmagic_barrel_drop_delay=-2}] cmagic_barrel_drop_delay 0

tellraw @a[scores={cmagic_barrel_drop_delay=-1}] [{"text":"Tag: Barrel drops deactivated!","color":"gold"}]
tellraw @a[scores={cmagic_barrel_drop_delay=0}] [{"text":"Tag: Barrel drops activated!","color":"gold"}]

