scoreboard players set #pltf_NumTeams pltf_setting 4

# Build central diamond platform
kill @e[type=armor_stand]
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1b,Marker:1b,CustomName:"diamond",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=diamond] run function platforms:builddiamond

# Build fireball platform above the centre
execute at @s run summon armor_stand ~ 208 ~ {Invisible:1b,Marker:1b,CustomName:"cannon1",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=cannon1] run function platforms:buildmagma
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build team platforms in a symmetric square layout
execute at @s run summon armor_stand ~-30 200 ~-30 {Invisible:1b,Marker:1b,CustomName:"team1",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=team1] run function platforms:buildteam1
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

execute at @s run summon armor_stand ~30 200 ~-30 {Invisible:1b,Marker:1b,CustomName:"team2",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=team2] run function platforms:buildteam2
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

execute at @s run summon armor_stand ~30 200 ~30 {Invisible:1b,Marker:1b,CustomName:"team3",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=team3] run function platforms:buildteam3
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

execute at @s run summon armor_stand ~-30 200 ~30 {Invisible:1b,Marker:1b,CustomName:"team4",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=team4] run function platforms:buildteam4
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

execute at @s run summon armor_stand ~-45 195 ~-30 {Invisible:1b,Marker:1b,CustomName:"emerald1",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=emerald1] run function platforms:buildemerald
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~
execute at @s run summon armor_stand ~-30 205 ~-45 {Invisible:1b,Marker:1b,CustomName:"villager1",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=villager1] run function platforms:summonvillager
execute at @e[type=armor_stand,name=villager1] run function platforms:buildvillager
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

execute at @s run summon armor_stand ~30 195 ~-45 {Invisible:1b,Marker:1b,CustomName:"emerald2",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=emerald2] run function platforms:buildemerald
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~
execute at @s run summon armor_stand ~45 205 ~-30 {Invisible:1b,Marker:1b,CustomName:"villager2",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=villager2] run function platforms:summonvillager
execute at @e[type=armor_stand,name=villager2] run function platforms:buildvillager
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

execute at @s run summon armor_stand ~45 195 ~30 {Invisible:1b,Marker:1b,CustomName:"emerald3",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=emerald3] run function platforms:buildemerald
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~
execute at @s run summon armor_stand ~30 205 ~45 {Invisible:1b,Marker:1b,CustomName:"villager3",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=villager3] run function platforms:summonvillager
execute at @e[type=armor_stand,name=villager3] run function platforms:buildvillager
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

execute at @s run summon armor_stand ~-30 195 ~45 {Invisible:1b,Marker:1b,CustomName:"emerald4",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=emerald4] run function platforms:buildemerald
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~
execute at @s run summon armor_stand ~-45 205 ~30 {Invisible:1b,Marker:1b,CustomName:"villager4",CustomNameVisible:0b}
execute at @e[type=armor_stand,name=villager4] run function platforms:summonvillager
execute at @e[type=armor_stand,name=villager4] run function platforms:buildvillager
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~
