## Finds a player potentially
tag @s add duel_search
function main:new_duel_id
scoreboard players operation #id var = @s duel.id
scoreboard players set #raycast var 10
execute rotated ~ 0 positioned ^ ^ ^1 run function main:player/duel/search_recurse
scoreboard players reset @s rightClick
