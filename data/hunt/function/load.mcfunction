
scoreboard objectives remove hunt_Hunted
scoreboard objectives remove hunt_On

scoreboard objectives add hunt_Hunted dummy
scoreboard objectives add hunt_On dummy

team remove hunt_runner
team remove hunt_hunter

team add hunt_runner
team add hunt_hunter

team modify hunt_runner color gold
team modify hunt_hunter color dark_red

say Cedric Hunt: reloaded!
