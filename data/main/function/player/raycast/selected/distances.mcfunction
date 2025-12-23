## sets up distance values for selected entity
tag @s remove new_distance
tag @s add distance

scoreboard players operation #distance var = @s distance
scoreboard players add #distance var 1

function main:board/cell/select_display

execute positioned ~-4 ~ ~ as @n[type=armor_stand,tag=board,tag=!draw_pile,tag=!discard_pile,tag=id,distance=..1,tag=!distance,tag=!new_distance] at @s run function main:player/raycast/selected/distance_add
execute positioned ~4 ~ ~ as @n[type=armor_stand,tag=board,tag=!draw_pile,tag=!discard_pile,tag=id,distance=..1,tag=!distance,tag=!new_distance] at @s run function main:player/raycast/selected/distance_add
execute positioned ~ ~ ~-4 as @n[type=armor_stand,tag=board,tag=!draw_pile,tag=!discard_pile,tag=id,distance=..1,tag=!distance,tag=!new_distance] at @s run function main:player/raycast/selected/distance_add
execute positioned ~ ~ ~4 as @n[type=armor_stand,tag=board,tag=!draw_pile,tag=!discard_pile,tag=id,distance=..1,tag=!distance,tag=!new_distance] at @s run function main:player/raycast/selected/distance_add
execute at @n[type=armor_stand,tag=selected,tag=id] as @n[type=armor_stand,tag=board,tag=id,tag=!distance,tag=new_distance,distance=..50] at @s run function main:player/raycast/selected/distances
