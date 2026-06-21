
fillbiome ~-20 -64 ~-20 ~20 -54 ~20 pale_garden
fillbiome ~-20 -54 ~-20 ~20 -44 ~20 pale_garden
fillbiome ~-20 -44 ~-20 ~20 -34 ~20 pale_garden

fill ~-20 -63 ~-20 ~20 -63 ~20 iron_ore
fill ~-20 -62 ~-20 ~20 -62 ~20 air
fill ~-20 -61 ~-20 ~20 -61 ~20 air
fill ~-20 -60 ~-20 ~20 -60 ~20 air
fill ~-20 -59 ~-20 ~20 -59 ~20 air
fill ~-20 -58 ~-20 ~20 -58 ~20 stone
fill ~-20 -57 ~-20 ~20 -57 ~20 stone
fill ~-20 -56 ~-20 ~20 -56 ~20 stone
fill ~-20 -55 ~-20 ~20 -55 ~20 dirt
fill ~-20 -54 ~-20 ~20 -54 ~20 dirt
fill ~-20 -53 ~-20 ~20 -53 ~20 dirt
fill ~-20 -52 ~-20 ~20 -52 ~20 grass_block

summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,CustomName:"terraform_marker_decoration",CustomNameVisible:0b}

spreadplayers ~ ~ 20 20 under 0 false @e[type=armor_stand,name=terraform_marker_decoration]
execute at @e[type=armor_stand,name=terraform_marker_decoration] run setblock ~ ~ ~ oak_sapling

spreadplayers ~ ~ 20 20 under 0 false @e[type=armor_stand,name=terraform_marker_decoration]
execute at @e[type=armor_stand,name=terraform_marker_decoration] run setblock ~ ~ ~ oak_sapling

spreadplayers ~ ~ 20 20 under 0 false @e[type=armor_stand,name=terraform_marker_decoration]
execute at @e[type=armor_stand,name=terraform_marker_decoration] run setblock ~ ~ ~ oak_sapling

spreadplayers ~ ~ 20 20 under 0 false @e[type=armor_stand,name=terraform_marker_decoration]
execute at @e[type=armor_stand,name=terraform_marker_decoration] run setblock ~ ~ ~ oak_sapling

spreadplayers ~ ~ 20 20 under 0 false @e[type=armor_stand,name=terraform_marker_decoration]
execute at @e[type=armor_stand,name=terraform_marker_decoration] run setblock ~ ~ ~ oak_sapling

spreadplayers ~ ~ 20 20 under 0 false @e[type=armor_stand,name=terraform_marker_decoration]
execute at @e[type=armor_stand,name=terraform_marker_decoration] run setblock ~ ~ ~ oak_sapling

spreadplayers ~ ~ 20 20 under 0 false @e[type=armor_stand,name=terraform_marker_decoration]
execute at @e[type=armor_stand,name=terraform_marker_decoration] run setblock ~ ~ ~ oak_sapling

spreadplayers ~ ~ 20 20 under 0 false @e[type=armor_stand,name=terraform_marker_decoration]
execute at @e[type=armor_stand,name=terraform_marker_decoration] run setblock ~ ~ ~ oak_sapling

spreadplayers ~ ~ 20 20 under 0 false @e[type=armor_stand,name=terraform_marker_decoration]
execute at @e[type=armor_stand,name=terraform_marker_decoration] run setblock ~ ~ ~ oak_sapling

kill @e[type=armor_stand,name=terraform_marker_decoration]
