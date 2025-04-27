
# preparation time
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 0 run title @a[scores={tag_On=1}] title [{"text":"Go!","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 60 run title @a[scores={tag_On=1}] title [{"text":"1 minute","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 120 run title @a[scores={tag_On=1}] title [{"text":"2 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 300 run title @a[scores={tag_On=1}] title [{"text":"5 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 600 run title @a[scores={tag_On=1}] title [{"text":"10 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 900 run title @a[scores={tag_On=1}] title [{"text":"15 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 1200 run title @a[scores={tag_On=1}] title [{"text":"20 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 0 run tellraw @a[scores={tag_On=1}] [{"text":"The score will now increase for the tagged player!","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 60 run tellraw @a[scores={tag_On=1}] [{"text":"Time left before the score increase:  1 minute","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 120 run tellraw @a[scores={tag_On=1}] [{"text":"Time left before the score increase:  2 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 300 run tellraw @a[scores={tag_On=1}] [{"text":"Time left before the score increase:  5 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 600 run tellraw @a[scores={tag_On=1}] [{"text":"Time left before the score increase: 10 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 900 run tellraw @a[scores={tag_On=1}] [{"text":"Time left before the score increase: 15 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 1200 run tellraw @a[scores={tag_On=1}] [{"text":"Time left before the score increase: 20 minutes","color":"gold"}]
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 0 run execute as @r[scores={tag_On=1}] run function tag:newrunner
execute if score #ctime_TicksInSec ctime_variable matches 0 if score #tag_PrepTime tag_setting matches 0.. run scoreboard players remove #tag_PrepTime tag_setting 1

# permanent effects
execute if score #tag_Gamemode tag_setting matches 1 run effect give @a[scores={tag_On=1,tag_Tag=0}] glowing 1 255 true
execute if score #tag_Gamemode tag_setting matches 0 run effect give @a[scores={tag_On=1,tag_Tag=1}] mining_fatigue infinite 0 true

# increment score
execute if score #tag_PrepTime tag_setting matches ..0 if score #ctime_TicksInSec ctime_variable matches 0 run scoreboard players add @a[scores={tag_On=1,tag_Tag=1}] tag_Score 1

# death mechanics
function tag:deathmechanics

# detect win
execute if score #tag_Gamemode tag_setting matches 0 as @a[scores={tag_On=1}] if score @s tag_Score >= #tag_TimeToWin tag_setting at @s run function tag:win
execute if score #tag_Gamemode tag_setting matches 1 as @a[scores={tag_On=1}] if score #ctime_Seconds ctime_variable >= #tag_TimeToWin tag_setting at @s run function tag:find_winner

# enforce helmet to distinguish the runner from the hunters
execute as @a[scores={tag_On=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if entity @s[team=tag_runner] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run item replace entity @s armor.head with golden_helmet[enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}}]
execute as @a[scores={tag_On=1}] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if entity @s[team=tag_hunter] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @s armor.head with leather_helmet[dyed_color={rgb:16711680},enchantments={levels:{"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}}]
execute as @a[scores={tag_On=1}] if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run item replace entity @s armor.head with air

# make players invincible during pauses
execute if score #ctime_Pause ctime_variable matches 1 run effect give @a[scores={tag_On=1}] resistance 1 255

