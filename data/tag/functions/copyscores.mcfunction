# copy scores in new variable
# this will serve to find the player with lowest score

execute as @a store result score @s tag_ScoreCopy run scoreboard players get @s tag_Score

# set the score of the current runner to a high number so that he is not chosen again
# only if the game state is 1 (to not interfere with the end game analysis)
scoreboard players set @a[scores={tag_Tag=1,tag_On=1}] tag_ScoreCopy 100000
