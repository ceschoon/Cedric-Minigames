
execute if entity @s[y=0,dy=89] run gamemode survival @s

execute if entity @s[y=90,dy=256] run gamemode adventure @s
execute if entity @s[y=90,dy=256] run title @s actionbar {"text":"Your gamemode is set to adventure above y=90","color":"red"}
