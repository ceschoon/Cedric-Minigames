scoreboard players set @a pltf_NumTeams 4

# Build central diamond platform
kill @e[type=armor_stand]
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1,Marker:1,CustomName:"\"diamond\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=diamond] run function platforms:builddiamond

# Build emerald platform 1
execute at @s run summon armor_stand ~20 195 ~20 {Invisible:1,Marker:1,CustomName:"\"emerald1\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=emerald1] run function platforms:buildemerald
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build emerald platform 2
execute at @s run summon armor_stand ~-20 195 ~-20 {Invisible:1,Marker:1,CustomName:"\"emerald2\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=emerald2] run function platforms:buildemerald
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build villager platform 1
execute at @s run summon armor_stand ~-20 205 ~20 {Invisible:1,Marker:1,CustomName:"\"villager1\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=villager1] run function platforms:summonvillager
execute at @e[type=armor_stand,name=villager1] run function platforms:buildvillager
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build villager platform 2
execute at @s run summon armor_stand ~20 205 ~-20 {Invisible:1,Marker:1,CustomName:"\"villager2\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=villager2] run function platforms:summonvillager
execute at @e[type=armor_stand,name=villager2] run function platforms:buildvillager
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build cannon platform 1
execute at @s run summon armor_stand ~-40 205 ~ {Invisible:1,Marker:1,CustomName:"\"cannon1\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=cannon1] run function platforms:buildmagma
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build cannon platform 2
execute at @s run summon armor_stand ~40 205 ~ {Invisible:1,Marker:1,CustomName:"\"cannon2\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=cannon2] run function platforms:buildmagma
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build team1 platform
execute at @s run summon armor_stand ~-60 200 ~-20 {Invisible:1,Marker:1,CustomName:"\"team1\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=team1] run function platforms:buildteam1
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build team2 platform
execute at @s run summon armor_stand ~60 200 ~20 {Invisible:1,Marker:1,CustomName:"\"team2\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=team2] run function platforms:buildteam2
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build team3 platform
execute at @s run summon armor_stand ~-60 200 ~20 {Invisible:1,Marker:1,CustomName:"\"team3\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=team3] run function platforms:buildteam3
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build team4 platform
execute at @s run summon armor_stand ~60 200 ~-20 {Invisible:1,Marker:1,CustomName:"\"team4\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=team4] run function platforms:buildteam4
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~
