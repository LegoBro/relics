## Sets player 2 up
tag @s add player.2
tag @s add wait
execute positioned ~-22 ~-5 ~-22 run function main:board/player/build_arena
scoreboard players operation #set.hero var = @s set.hero
execute as @e[tag=hero.2,tag=id] run function main:board/player/hero
tp @s ~ ~8 ~7 180 0
execute at @s run tp @s @s
execute at @e[type=armor_stand,tag=board.player.2,tag=id] run function main:arena/create/arena/load_deck
tag @s remove selected