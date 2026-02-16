

scoreboard objectives remove cfp_test_if_defined
scoreboard objectives add cfp_test_if_defined dummy
scoreboard players set #test cfp_test_if_defined 0

## This line will fail if the cfp datapack is not enabled, leaving the test variable set to 0
## Note that if the datapack is loaded after this one, the value of this test variable will be wrong but the placeholders will be overriten as they should
execute if score #test cfp_defined matches 1 run scoreboard players set #test cfp_test_if_defined 1

## If the cfp datapack is not enabled, define placeholder variables here
execute unless score #test cfp_test_if_defined matches 1 run scoreboard objectives add cfp_is_fake_player dummy
execute unless score #test cfp_test_if_defined matches 1 run scoreboard players set @a cfp_is_fake_player 0

scoreboard objectives remove cfp_test_if_defined
