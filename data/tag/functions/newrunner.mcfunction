#### Executed by to-become new runner

# Make current tagged player a regular hunter (keep old team color)
execute unless entity @a[team=tag_hunter8] run team join tag_hunter8 @a[scores={tag_Tag=1}]
execute unless entity @a[team=tag_hunter7] run team join tag_hunter7 @a[scores={tag_Tag=1}]
execute unless entity @a[team=tag_hunter6] run team join tag_hunter6 @a[scores={tag_Tag=1}]
execute unless entity @a[team=tag_hunter5] run team join tag_hunter5 @a[scores={tag_Tag=1}]
execute unless entity @a[team=tag_hunter4] run team join tag_hunter4 @a[scores={tag_Tag=1}]
execute unless entity @a[team=tag_hunter3] run team join tag_hunter3 @a[scores={tag_Tag=1}]
execute unless entity @a[team=tag_hunter2] run team join tag_hunter2 @a[scores={tag_Tag=1}]
execute unless entity @a[team=tag_hunter1] run team join tag_hunter1 @a[scores={tag_Tag=1}]

# Make current player the new runner
team join tag_runner @s

# Avoid bug (honestly I dont remember why this is here)
scoreboard players set @a tag_ScoreCopy -1

# Reset kills indicators
scoreboard players set @a tag_kbrunner 0
scoreboard players set @a tag_kbhunter1 0
scoreboard players set @a tag_kbhunter2 0
scoreboard players set @a tag_kbhunter3 0
scoreboard players set @a tag_kbhunter4 0
scoreboard players set @a tag_kbhunter5 0
scoreboard players set @a tag_kbhunter6 0
scoreboard players set @a tag_kbhunter7 0
scoreboard players set @a tag_kbhunter8 0

# Give tag to new runner
scoreboard players set @a tag_Tag 0
scoreboard players set @s tag_Tag 1

# Compass must point to new runner
execute if entity @s run function compass:trackme

