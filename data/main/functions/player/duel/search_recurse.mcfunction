## Finds a player potentially (recursive)
scoreboard players remove #raycast var 1
execute positioned ~ ~ ~ as @p[tag=!duel_search,team=!waiting,tag=!duel_invited,distance=..1] run function main:player/duel/invite
execute if score #raycast var matches 1.. positioned ^ ^ ^.5 run function main:player/duel/search_recurse
execute if score #raycast var matches 0 run tag @s remove duel_search
#particle minecraft:flame
