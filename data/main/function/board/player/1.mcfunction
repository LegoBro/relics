## Sets player 1 up
tag @s add player.1
tag @s add turn
execute positioned ~-22 ~-5 ~-22 run function main:board/player/build_arena
scoreboard players operation #set.hero var = @s set.hero
execute as @e[tag=hero.1,tag=id] run function main:board/player/hero
tp @s ~ ~9 ~-7 0 0
execute at @s run tp @s @s
execute at @e[type=armor_stand,tag=board.player.1,tag=id] run function main:arena/create/arena/load_deck
tag @s remove selected
summon text_display ~ ~ ~ {text:{selector:"@p[tag=board.load.player,tag=player.1]"},Tags:["player.1.name","get_id"]}
scoreboard players operation @e[tag=get_id] id = game.id var
tag @e[tag=get_id] remove get_id

scoreboard players operation @n[type=armor_stand,tag=board.center,limit=1,tag=id] ratingA = @s rating