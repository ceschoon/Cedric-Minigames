
team join cgame_regular @a[scores={cgame_on=1,cgame_starting_team=0}]
team join cgame_increment @a[scores={cgame_on=1,cgame_starting_team=1}]
team join cgame_decrement @a[scores={cgame_on=1,cgame_starting_team=2}]
team join cgame_boss @a[scores={cgame_on=1,cgame_starting_team=3}]
team join cgame_hunter @a[scores={cgame_on=1,cgame_starting_team=4}]
team join cgame_cultist @a[scores={cgame_on=1,cgame_starting_team=5}]

give @a[team=cgame_boss,scores={cgame_on=1}] golden_axe
give @a[team=cgame_boss,scores={cgame_on=1}] golden_pickaxe
give @a[team=cgame_boss,scores={cgame_on=1}] golden_shovel
loot give @a[team=cgame_boss,scores={cgame_on=1}] loot cmagic:magical_item

