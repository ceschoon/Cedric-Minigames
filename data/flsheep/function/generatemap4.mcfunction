
gamemode creative

# Build central platform
kill @e[type=armor_stand]
execute at @s run summon armor_stand ~ 225 ~ {Invisible:1b,Marker:1b,CustomName:"centre",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=centre] run function flsheep:buildcentre4

# Build team1 platform
execute at @s run tp ~-60 ~ ~
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1b,Marker:1b,CustomName:"team1",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=team1] run function flsheep:buildteam1
execute at @e[type=armor_stand,name=centre] run tp @s ~ ~ ~

# Build team2 platform
execute at @s run tp ~60 ~ ~
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1b,Marker:1b,CustomName:"team2",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=team2] run function flsheep:buildteam2
execute at @e[type=armor_stand,name=centre] run tp @s ~ ~ ~

# Build team3 platform
execute at @s run tp ~ ~ ~-60
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1b,Marker:1b,CustomName:"team3",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=team3] run function flsheep:buildteam3
execute at @e[type=armor_stand,name=centre] run tp @s ~ ~ ~

# Build team4 platform
execute at @s run tp ~ ~ ~60
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1b,Marker:1b,CustomName:"team4",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=team4] run function flsheep:buildteam4
execute at @e[type=armor_stand,name=centre] run tp @s ~ ~ ~
