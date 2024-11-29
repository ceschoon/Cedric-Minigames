
scoreboard objectives remove cscale_step
scoreboard objectives remove cscale_stepdelay

scoreboard objectives add cscale_step dummy
scoreboard objectives add cscale_stepdelay dummy

scoreboard players set @a cscale_step -1
scoreboard players set @a cscale_stepdelay 0

##say Cedric Scale: reloaded!

## To activate prank, uncomment the following line and /reload
##scoreboard players set @a cscale_step 0
