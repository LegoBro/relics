
tag @e[distance=..200,tag=id,tag=enemy_hero] remove enemy_hero
execute if entity @s[tag=player.1] run tag @n[tag=id,tag=hero.2,distance=..100] add enemy_hero
execute if entity @s[tag=player.2] run tag @n[tag=id,tag=hero.1,distance=..100] add enemy_hero