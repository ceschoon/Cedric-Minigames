
scoreboard objectives remove tag_notowers
scoreboard objectives remove tag_ylimit
scoreboard objectives remove tag_notunnels
scoreboard objectives remove tag_noboats

scoreboard objectives add tag_notowers dummy
scoreboard objectives add tag_ylimit dummy
scoreboard objectives add tag_notunnels dummy
scoreboard objectives add tag_noboats dummy

scoreboard players set @a tag_notowers 0
scoreboard players set @a tag_ylimit 0
scoreboard players set @a tag_notunnels 0
scoreboard players set @a tag_noboats 0

scoreboard objectives remove tag_distInBoat
scoreboard objectives add tag_distInBoat minecraft.custom:minecraft.boat_one_cm
scoreboard players set @a tag_distInBoat 0

say Cedric Tag: reloaded rules module!
