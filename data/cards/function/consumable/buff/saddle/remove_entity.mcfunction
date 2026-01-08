## Removes entity status
tag @s remove card.entity
scoreboard players reset @s
scoreboard players operation @s id = game.id var
tag @s add card.passenger
tag @e[tag=saddle_top,tag=id,distance=..100] remove saddle_top
return 1