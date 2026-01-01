
## Note: Will not create new one if a hill already exists. 
##       Instead, this function will move the existing hill at the current location.

scoreboard players set #cgame_include_hill cgame_setting 1

execute unless entity @e[type=armor_stand,name=cgame_hill] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,CustomName:"\"cgame_hill\"",CustomNameVisible:0b}

tp @e[type=armor_stand,name=cgame_hill] ~ ~ ~

execute at @e[type=armor_stand,name=cgame_hill] run function ccompass:target_here

