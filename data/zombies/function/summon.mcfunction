## Nothing for rng=0

## Zombie with elytra (can they die from impact? give totem?)
execute if entity @s[scores={zombies_difficulty=2..,zombies_rng=1..4}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],FallFlying:1b,equipment:{chest:{id:'minecraft:elytra',count:1},mainhand:{id:'minecraft:iron_sword',count:1}},drop_chances:{chest:0.0F,mainhand:0.2F}}

## Zombie riding spider
execute if entity @s[scores={zombies_difficulty=2..,zombies_rng=5..9}] run summon spider ~ ~ ~ {Passengers:[{id:"minecraft:zombie",Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:iron_sword',count:1}},drop_chances:{mainhand:0.2F}}]}

## Zombie villager
execute if entity @s[scores={zombies_rng=10..19}] run summon zombie_villager ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}]}

## Baby zombies
execute if entity @s[scores={zombies_difficulty=1..,zombies_rng=20..26}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],IsBaby:1b}
execute if entity @s[scores={zombies_difficulty=2..,zombies_rng=27..29}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],IsBaby:1b,equipment:{mainhand:{id:'minecraft:wooden_sword',count:1}},drop_chances:{mainhand:0.2F}}

## Zombie with armor
execute if entity @s[scores={zombies_rng=30}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{head:{id:'minecraft:chainmail_helmet',count:1}},drop_chances:{head:0.2F}}
execute if entity @s[scores={zombies_rng=31}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{chest:{id:'minecraft:chainmail_chestplate',count:1}},drop_chances:{chest:0.2F}}
execute if entity @s[scores={zombies_rng=32}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{legs:{id:'minecraft:chainmail_leggings',count:1}},drop_chances:{legs:0.2F}}
execute if entity @s[scores={zombies_rng=33}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{feet:{id:'minecraft:chainmail_boots',count:1}},drop_chances:{feet:0.2F}}
execute if entity @s[scores={zombies_rng=34}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{head:{id:'minecraft:iron_helmet',count:1}},drop_chances:{head:0.2F}}
execute if entity @s[scores={zombies_rng=35}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{chest:{id:'minecraft:iron_chestplate',count:1}},drop_chances:{chest:0.2F}}
execute if entity @s[scores={zombies_rng=36}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{legs:{id:'minecraft:iron_leggings',count:1},chest:{id:'minecraft:iron_chestplate',count:1}},drop_chances:{legs:0.2F,chest:0.2F}}
execute if entity @s[scores={zombies_rng=37}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{feet:{id:'minecraft:iron_boots',count:1},head:{id:'minecraft:iron_helmet',count:1}},drop_chances:{feet:0.2F,head:0.2F}}
execute if entity @s[scores={zombies_rng=38}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{head:{id:'minecraft:golden_helmet',count:1}},drop_chances:{head:0.2F}}
execute if entity @s[scores={zombies_rng=39}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{chest:{id:'minecraft:golden_chestplate',count:1},head:{id:'minecraft:golden_helmet',count:1}},drop_chances:{chest:0.2F,head:0.2F}}

## Zombie with weapons
execute if entity @s[scores={zombies_rng=40}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:golden_sword',count:1}},drop_chances:{mainhand:0.2F}}
execute if entity @s[scores={zombies_rng=41}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:wooden_sword',count:1}},drop_chances:{mainhand:0.2F}}
execute if entity @s[scores={zombies_rng=42}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:stone_sword',count:1}},drop_chances:{mainhand:0.2F}}
execute if entity @s[scores={zombies_rng=43}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:iron_sword',count:1}},drop_chances:{mainhand:0.2F}}
execute if entity @s[scores={zombies_rng=44}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:diamond_sword',count:1}},drop_chances:{mainhand:0.2F}}
execute if entity @s[scores={zombies_rng=45}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:golden_axe',count:1}},drop_chances:{mainhand:0.2F}}
execute if entity @s[scores={zombies_rng=46}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:iron_axe',count:1}},drop_chances:{mainhand:0.2F}}
execute if entity @s[scores={zombies_rng=47}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:stone_axe',count:1}},drop_chances:{mainhand:0.2F}}
execute if entity @s[scores={zombies_rng=48}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:iron_shovel',count:1}},drop_chances:{mainhand:0.2F}}
execute if entity @s[scores={zombies_rng=49}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{mainhand:{id:'minecraft:diamond_shovel',count:1}},drop_chances:{mainhand:0.2F}}

## Fully equipped zombies
execute if entity @s[scores={zombies_difficulty=1..,zombies_rng=50..53}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{feet:{id:'minecraft:leather_boots',count:1},legs:{id:'minecraft:leather_leggings',count:1},chest:{id:'minecraft:leather_chestplate',count:1},head:{id:'minecraft:leather_helmet',count:1},mainhand:{id:'minecraft:stone_sword',count:1}},drop_chances:{feet:0.1F,legs:0.1F,chest:0.1F,head:0.1F,mainhand:0.1F}}
execute if entity @s[scores={zombies_difficulty=1..,zombies_rng=54..56}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{feet:{id:'minecraft:golden_boots',count:1},legs:{id:'minecraft:golden_leggings',count:1},chest:{id:'minecraft:golden_chestplate',count:1},head:{id:'minecraft:golden_helmet',count:1},mainhand:{id:'minecraft:golden_sword',count:1}},drop_chances:{feet:0.1F,legs:0.1F,chest:0.1F,head:0.1F,mainhand:0.1F}}
execute if entity @s[scores={zombies_difficulty=2..,zombies_rng=57..58}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{feet:{id:'minecraft:iron_boots',count:1},legs:{id:'minecraft:iron_leggings',count:1},chest:{id:'minecraft:iron_chestplate',count:1},head:{id:'minecraft:iron_helmet',count:1},mainhand:{id:'minecraft:iron_sword',count:1}},drop_chances:{feet:0.1F,legs:0.1F,chest:0.1F,head:0.1F,mainhand:0.1F}}
execute if entity @s[scores={zombies_difficulty=2..,zombies_rng=59..59}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],equipment:{feet:{id:'minecraft:diamond_boots',count:1},legs:{id:'minecraft:diamond_leggings',count:1},chest:{id:'minecraft:diamond_chestplate',count:1},head:{id:'minecraft:diamond_helmet',count:1},mainhand:{id:'minecraft:diamond_sword',count:1}},drop_chances:{feet:0.1F,legs:0.1F,chest:0.1F,head:0.1F,mainhand:0.1F}}

## Zombie that can break doors
execute if entity @s[scores={zombies_rng=60..69}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],CanBreakDoors:1b}

## Zombie that is silent
execute if entity @s[scores={zombies_rng=70..79}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}],Silent:1b}

## Zombie that can spawn reinforcments
execute if entity @s[scores={zombies_rng=80..84}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64},{id:"spawn_reinforcements",base:0.50f}],equipment:{head:{id:'minecraft:iron_helmet',count:1}}}
execute if entity @s[scores={zombies_rng=85..88}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64},{id:"spawn_reinforcements",base:0.75f}],equipment:{head:{id:'minecraft:golden_helmet',count:1}}}
execute if entity @s[scores={zombies_rng=89..89}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64},{id:"spawn_reinforcements",base:0.95f}],equipment:{head:{id:'minecraft:diamond_helmet',count:1}}}

## Zombies with more health
execute if entity @s[scores={zombies_rng=90..94}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64},{id:"max_health",base:24}]}
execute if entity @s[scores={zombies_rng=95..98}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64},{id:"max_health",base:30}]}
execute if entity @s[scores={zombies_rng=99..99}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64},{id:"max_health",base:40}]}

## Regular zombie
execute if entity @s[scores={zombies_rng=100..}] run summon zombie ~ ~ ~ {Tags:['custom_zombie'],attributes:[{id:"follow_range",base:64}]}


