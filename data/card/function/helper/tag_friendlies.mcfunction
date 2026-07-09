## Take all entities and tag them if they are friendly with is_friendly tag
tag @e[distance=..200,tag=id,tag=is_friendly] remove is_friendly
execute as @e[tag=id,tag=attackable,distance=..200] at @s if entity @n[type=armor_stand,tag=board,tag=friendly,distance=..1.5] run tag @s add is_friendly