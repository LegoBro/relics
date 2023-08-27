execute if score @s turnTimer matches 1..40 run particle minecraft:nautilus ~ ~2 ~ 0.5 0.5 0.5 0.2 1 force
execute if score @s turnTimer matches 41..70 run particle minecraft:nautilus ~ ~2 ~ 0.5 0.5 0.5 0.2 2 force
execute if score @s turnTimer matches 71..100 run particle minecraft:nautilus ~ ~2 ~ 0.5 0.5 0.5 0.2 3 force

execute positioned ~-2.5 ~3.1 ~-2.5 run particle splash ~ ~ ~ 0 0 0 1 10 force
execute positioned ~2.5 ~3.1 ~-2.5 run particle splash ~ ~ ~ 0 0 0 1 10 force
execute positioned ~-2.5 ~3.1 ~2.5 run particle splash ~ ~ ~ 0 0 0 1 10 force
execute positioned ~2.5 ~3.1 ~2.5 run particle splash ~ ~ ~ 0 0 0 1 10 force


## Open pack, epic
execute if score @s turnTimer matches 40 as @p[tag=id] run function cards:open/6
execute if score @s turnTimer matches 70 as @p[tag=id] run function cards:open/6
execute if score @s turnTimer matches 100 as @p[tag=id] run function cards:open/6