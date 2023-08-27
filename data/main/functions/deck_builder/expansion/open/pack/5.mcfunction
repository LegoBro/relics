execute if score @s turnTimer matches 1..40 run particle minecraft:end_rod ~ ~2 ~ 0.5 0.5 0.5 0.2 1 force
execute if score @s turnTimer matches 41..70 run particle minecraft:end_rod ~ ~2 ~ 0.5 0.5 0.5 0.2 2 force
execute if score @s turnTimer matches 71..100 run particle minecraft:end_rod ~ ~2 ~ 0.5 0.5 0.5 0.2 3 force

execute positioned ~-2.5 ~3.1 ~-2.5 run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 .1 5 force
execute positioned ~2.5 ~3.1 ~-2.5 run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 .1 5 force
execute positioned ~-2.5 ~3.1 ~2.5 run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 .1 5 force
execute positioned ~2.5 ~3.1 ~2.5 run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 .1 5 force

## Open pack, epic
execute if score @s turnTimer matches 40 as @p[tag=id] run function cards:open/5
execute if score @s turnTimer matches 70 as @p[tag=id] run function cards:open/5
execute if score @s turnTimer matches 100 as @p[tag=id] run function cards:open/5