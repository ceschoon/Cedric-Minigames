
gamemode creative

# Build central platform
kill @e[type=armor_stand]
execute at @s run summon armor_stand ~ 225 ~ {Invisible:1b,Marker:1b,CustomName:"\"centre\"",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=centre] run function flsheep:buildcentre2

# Build team1 platform
execute at @s run tp ~-60 ~ ~
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1b,Marker:1b,CustomName:"\"team1\"",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=team1] run function flsheep:buildteam1
execute at @e[type=armor_stand,name=centre] run tp @s ~ ~ ~

# Build team2 platform
execute at @s run tp ~60 ~ ~
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1b,Marker:1b,CustomName:"\"team2\"",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=team2] run function flsheep:buildteam2
execute at @e[type=armor_stand,name=centre] run tp @s ~ ~ ~
