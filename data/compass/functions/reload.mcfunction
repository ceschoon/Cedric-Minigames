# Compass Module reload

## target = 0 means the player is not being tracked
## target = 1 means the player is a tracking target
## target = 2 is a trick to run the pointindimension functions with a static target (should be implemente differently)

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
# TODO: This should be avoided and the other minigame functions should detect the dimension on their own
scoreboard objectives remove dimroof
scoreboard objectives add dimroof dummy

scoreboard players set @a target 0
scoreboard players set @a dimroof 0

say Cedric Compass module: reloaded!
