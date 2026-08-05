tellraw @a [' ']
tellraw @a [{text:'=== Minigame Composer: Tweaker Menu ===',color:gold,bold:true}]

tellraw @a [' ']
tellraw @a [{text:'Changing these settings mid-game can break it!',color:gold}]

tellraw @a [' ']
tellraw @a [{text:'[Limit game duration]',color:aqua,click_event:{action:suggest_command,command:'/scoreboard players set #cgame_time_to_win cgame_setting 1200'}}]
tellraw @a [{text:'[Change preparation time]',color:aqua,click_event:{action:suggest_command,command:'/scoreboard players set #cgame_preptime cgame_setting 0'}}]
tellraw @a [{text:'[Change score to win]',color:aqua,click_event:{action:suggest_command,command:'/scoreboard players set #cgame_score_to_win cgame_setting 1200'}}]
tellraw @a [{text:'[Change map size (1 to 5)]',color:aqua,click_event:{action:suggest_command,command:'/scoreboard players set #cgame_map_size cgame_setting 1'}}]
tellraw @a [{text:'[Enable border shrink (0 or 1)]',color:aqua,click_event:{action:suggest_command,command:'/scoreboard players set #cgame_shrink_border cgame_setting 1'}}]
tellraw @a [{text:'[Enable cursed tag (0 or 1)]',color:aqua,click_event:{action:suggest_command,command:'/scoreboard players set #cgame_curse_active cgame_setting 1'}}]
tellraw @a [{text:'[Enable barrel drops (0 or 1)]',color:aqua,click_event:{action:suggest_command,command:'/scoreboard players set #cgame_include_barrel_drops cgame_setting 1'}}]
tellraw @a [{text:'[Enable runner mining fatigue (0 or 1)]',color:aqua,click_event:{action:suggest_command,command:'/scoreboard players set #cgame_include_runner_mining_fatigue cgame_setting 1'}}]
tellraw @a [{text:'[Enable item shop for hunters (0 or 1)]',color:aqua,click_event:{action:suggest_command,command:'/scoreboard players set #cgame_include_hunter_item_shop cgame_setting 1'}}]
tellraw @a [{text:'[Hide advancements]',color:aqua,click_event:{action:suggest_command,command:'/gamerule minecraft:show_advancement_messages false'}}]
tellraw @a [{text:'[Hide death messages]',color:aqua,click_event:{action:suggest_command,command:'/gamerule show_death_messages false'}}]
tellraw @a [{text:'[Place hill here]',color:aqua,click_event:{action:suggest_command,command:'/function cgame:place_hill_here'},hover_event:{action:show_text,value:{text:'Used to play king of the hill'}}}]

tellraw @a [' ']
tellraw @a [{text:'[Start]',color:green,click_event:{action:run_command,command:'/function cgame:start'},hover_event:{action:show_text,value:{text:'Launch the game with the current settings'}}}]

tellraw @a [{text:'[Pause/Restart]',color:dark_green,click_event:{action:run_command,command:'/function ctime:togglepause'}}]
tellraw @a [' ']

