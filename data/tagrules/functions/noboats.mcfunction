
execute if entity @s[scores={tag_distInBoat=1..}] run effect give @s poison 5
execute if entity @s[scores={tag_distInBoat=1..}] run effect give @s blindness 5
execute if entity @s[scores={tag_distInBoat=1..}] run title @s actionbar {"text":"You cannot use boats","color":"red"}

scoreboard players set @s[scores={tag_distInBoat=1..}] tag_distInBoat 0
