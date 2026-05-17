tellraw @a [' ']
tellraw @a [{text:'=== Zombie Apocalypse ===',color:gold,bold:true}]
tellraw @a [{text:'[Reload]',color:dark_aqua,click_event:{action:run_command,command:'function zombies:load'}}]
tellraw @a [{text:'[Info]',color:aqua,click_event:{action:run_command,command:'function zombies:info'}}]
tellraw @a [{text:'[Switch Difficulty]',color:aqua,click_event:{action:run_command,command:'function zombies:cycledifficulty'}}]
tellraw @a [{text:'[Join Team Zombies]',color:aqua,click_event:{action:run_command,command:'function zombies:jointeamzombies'}}]
tellraw @a [{text:'[Start/Stop]',color:green,click_event:{action:run_command,command:'function zombies:toggleonoff'}}]
tellraw @a [' ']

