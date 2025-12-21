## sets up distance values for selected entity
tag @s remove new_distance
tag @s add distance

execute if score @s distance <= #speed var run item replace entity @s[tag=!filled] armor.head with book[item_model="cell_state/move"]

execute if score @s distance <= #range var run item replace entity @s[tag=hostile] armor.head with book[item_model="cell_state/attack"]

execute if score @s distance matches 0 run item replace entity @s armor.head with book[item_model="cell_state/empty"]

scoreboard players operation #distance var = @s distance
scoreboard players add #distance var 1

execute positioned ~-4 ~ ~ as @e[type=armor_stand,tag=board,tag=!draw_pile,tag=!discard_pile,tag=id,limit=1,distance=..1,tag=!distance,tag=!new_distance] at @s run function main:player/raycast/selected/distance_add
execute positioned ~4 ~ ~ as @e[type=armor_stand,tag=board,tag=!draw_pile,tag=!discard_pile,tag=id,limit=1,distance=..1,tag=!distance,tag=!new_distance] at @s run function main:player/raycast/selected/distance_add
execute positioned ~ ~ ~-4 as @e[type=armor_stand,tag=board,tag=!draw_pile,tag=!discard_pile,tag=id,limit=1,distance=..1,tag=!distance,tag=!new_distance] at @s run function main:player/raycast/selected/distance_add
execute positioned ~ ~ ~4 as @e[type=armor_stand,tag=board,tag=!draw_pile,tag=!discard_pile,tag=id,limit=1,distance=..1,tag=!distance,tag=!new_distance] at @s run function main:player/raycast/selected/distance_add
execute at @e[type=armor_stand,tag=selected,tag=id] as @e[type=armor_stand,tag=board,tag=id,limit=1,tag=!distance,tag=new_distance,sort=nearest] at @s run function main:player/raycast/selected/distances
