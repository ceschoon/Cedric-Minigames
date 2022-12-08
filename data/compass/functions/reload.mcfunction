# Compass Module reload

scoreboard objectives remove drop
scoreboard objectives remove target
scoreboard objectives remove X
scoreboard objectives remove Y
scoreboard objectives remove Z

scoreboard objectives add drop minecraft.dropped:minecraft.compass
scoreboard objectives add target dummy
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy

# Variable used to spread players: indicates the presence of a roof
scoreboard objectives remove dimroof
scoreboard objectives add dimroof dummy

scoreboard players set @a target 0
scoreboard players set @a dimroof 0

say Cedric Compass module: reloaded!
