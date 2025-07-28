

################################################################################
## Player variables

scoreboard objectives remove ccompass_dropped
scoreboard objectives remove ccompass_crafted
scoreboard objectives remove ccompass_target
scoreboard objectives remove ccompass_group
scoreboard objectives remove ccompass_type
scoreboard objectives remove ccompass_x
scoreboard objectives remove ccompass_y
scoreboard objectives remove ccompass_z

scoreboard objectives add ccompass_dropped minecraft.dropped:minecraft.compass
scoreboard objectives add ccompass_crafted minecraft.crafted:minecraft.compass
scoreboard objectives add ccompass_target dummy
scoreboard objectives add ccompass_group dummy
scoreboard objectives add ccompass_type dummy
scoreboard objectives add ccompass_x dummy
scoreboard objectives add ccompass_y dummy
scoreboard objectives add ccompass_z dummy

scoreboard players set @a ccompass_dropped 0
scoreboard players set @a ccompass_crafted 0
scoreboard players set @a ccompass_target 0
scoreboard players set @a ccompass_group 0
scoreboard players set @a ccompass_type 1
scoreboard players set @a ccompass_x 0
scoreboard players set @a ccompass_y 0
scoreboard players set @a ccompass_z 0


################################################################################
## Global variables / settings

scoreboard objectives remove ccompass_setting
scoreboard objectives add ccompass_setting dummy

scoreboard players set #ccompass_active ccompass_setting 0

scoreboard objectives remove ccompass_variable
scoreboard objectives add ccompass_variable dummy


################################################################################
## Miscellaneous

kill @e[type=armor_stand,tag=ccompass_poi]

say Cedric New Compass module: reloaded!

