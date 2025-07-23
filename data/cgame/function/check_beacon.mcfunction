
## This function is meant to be executed by the armor_stand entity
## It will get removed if it is not positioned on top of a valid beacon

scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 2

execute unless block ~-2 ~-2 ~-2 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~-2 ~-2 ~-1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~-2 ~-2 ~ #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~-2 ~-2 ~1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~-2 ~-2 ~2 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~-2 ~-2 ~-2 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~-1 ~-2 ~-1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~-1 ~-2 ~ #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~-1 ~-2 ~1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~-1 ~-2 ~2 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~ ~-2 ~-2 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~ ~-2 ~-1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~ ~-2 ~ #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~ ~-2 ~1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~ ~-2 ~2 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~1 ~-2 ~-2 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~1 ~-2 ~-1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~1 ~-2 ~ #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~1 ~-2 ~1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~1 ~-2 ~2 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~2 ~-2 ~-2 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~2 ~-2 ~-1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~2 ~-2 ~ #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~2 ~-2 ~1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1
execute unless block ~2 ~-2 ~2 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 1

execute unless block ~ ~ ~ beacon run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 0
execute unless block ~-1 ~-1 ~-1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 0
execute unless block ~-1 ~-1 ~ #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 0
execute unless block ~-1 ~-1 ~1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 0
execute unless block ~ ~-1 ~-1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 0
execute unless block ~ ~-1 ~ #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 0
execute unless block ~ ~-1 ~1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 0
execute unless block ~1 ~-1 ~-1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 0
execute unless block ~1 ~-1 ~ #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 0
execute unless block ~1 ~-1 ~1 #cgame:cult_beacon_base run scoreboard players set @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level 0

execute if score @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level matches 0 run kill @s[type=armor_stand,name=cgame_cult_beacon]

execute if score @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level matches 0 positioned ~ ~1 ~ run kill @e[type=armor_stand,name="Cultist Beacon Level 1/2",distance=..0.1]
execute if score @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level matches 0 positioned ~ ~1 ~ run kill @e[type=armor_stand,name="Cultist Beacon Level 2/2",distance=..0.1]
execute if score @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level matches 1 positioned ~ ~1 ~ run kill @e[type=armor_stand,name="Cultist Beacon Level 2/2",distance=..0.1]

execute if score @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level matches 1 positioned ~ ~1 ~ run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"Cultist Beacon Level 1/2\"",CustomNameVisible:1}
execute if score @s[type=armor_stand,name=cgame_cult_beacon] cgame_cult_beacon_level matches 2 positioned ~ ~1 ~ run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"Cultist Beacon Level 2/2\"",CustomNameVisible:1}




