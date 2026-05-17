
execute if score #pltf_nofireballs pltf_setting matches 0 run scoreboard players set #pltf_nofireballs pltf_setting 10
execute if score #pltf_nofireballs pltf_setting matches 1 run scoreboard players set #pltf_nofireballs pltf_setting 11
execute if score #pltf_nofireballs pltf_setting matches 10 run scoreboard players set #pltf_nofireballs pltf_setting 1
execute if score #pltf_nofireballs pltf_setting matches 11 run scoreboard players set #pltf_nofireballs pltf_setting 0

execute if score #pltf_nofireballs pltf_setting matches 0 run tellraw @a [{text:'Platforms: Fireballs reactivated',color:gold}]
execute if score #pltf_nofireballs pltf_setting matches 1 run tellraw @a [{text:'Platforms: Fireballs deactivated',color:gold}]

