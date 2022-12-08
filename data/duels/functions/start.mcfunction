
# Scoreboards
scoreboard objectives setdisplay sidebar duels_Score

# Gamerules
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule naturalRegeneration true

gamemode spectator @a

# Tp all players to bring them in the correct dimension
tp @a @s

# World
time set 0

# Set spawn (other players, will later be reset for duelists)
execute as @a at @s run spawnpoint @s ~ ~ ~
execute at @s run setworldspawn ~ ~ ~

schedule function duels:prepareduelists 1s
schedule function duels:delayedstart 6s


