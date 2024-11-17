
scoreboard objectives remove boss_Who
scoreboard objectives remove boss_On

scoreboard objectives add boss_Who dummy
scoreboard objectives add boss_On dummy

scoreboard players set @a boss_Who 0
scoreboard players set @a boss_On 0

bossbar remove playerboss

team add boss_Boss "Team Boss"
team add boss_Hunter "Team Hunters"

team modify boss_Boss color red
team modify boss_Hunter color green

say Cedric Kill The Boss: reloaded!

