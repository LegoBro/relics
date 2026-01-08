## Take all entities and tag them if they can currently move
tag @e[distance=..200,tag=id,tag=is_movable] remove is_movable
execute as @e[tag=id,tag=attackable,distance=..200] at @s if entity @n[type=armor_stand,tag=board,tag=movable,distance=..1.5] run tag @s add is_movable