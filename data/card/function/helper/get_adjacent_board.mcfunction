## Gets adjacent board slots (usually ran as board itself, but can be ran as unit)
tag @e[tag=id,tag=board,distance=..100] remove is_adjacent
execute positioned ~ ~ ~4 run tag @n[tag=board,tag=id,distance=..1.5] add is_adjacent
execute positioned ~ ~ ~-4 run tag @n[tag=board,tag=id,distance=..1.5] add is_adjacent
execute positioned ~4 ~ ~ run tag @n[tag=board,tag=id,distance=..1.5] add is_adjacent
execute positioned ~-4 ~ ~ run tag @n[tag=board,tag=id,distance=..1.5] add is_adjacent