## Verifies if player is in a match when they logged out, and it's still running
scoreboard players operation @s world.link = #GLOBAL world.link

scoreboard players operation #test_match var = @s match.id

## Another player exists with the same score, ignore reset
execute as @a[distance=0.01..] if score @s match.id = #test_match var run return 0

## Player doesn't exist, reset them!
function main:player/send_to_lobby