
tag @e[distance=..200,tag=id,tag=my_hero] remove my_hero
execute if entity @s[tag=player.1] run tag @n[tag=id,tag=hero.1,distance=..100] add my_hero
execute if entity @s[tag=player.2] run tag @n[tag=id,tag=hero.2,distance=..100] add my_hero