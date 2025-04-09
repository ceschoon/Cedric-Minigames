#### Executed by to-become new runner

# Make current tagged player a regular hunter (keep old team color)
team join tag_hunter @a[scores={tag_Tag=1}]

# Make current player the new runner
team join tag_runner @s

# Avoid bug (honestly I dont remember why this is here)
scoreboard players set @a tag_ScoreCopy -1

# Reset kills indicators
#scoreboard players set @a tag_KillDetect 0

# Give tag to new runner
scoreboard players set @a tag_Tag 0
scoreboard players set @s tag_Tag 1

# Compass must point to new runner
execute if entity @s run function compass:trackme

