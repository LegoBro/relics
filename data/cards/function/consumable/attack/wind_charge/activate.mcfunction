## Pushes an entity back

playsound minecraft:entity.wind_charge.wind_burst master @a[tag=id] ~ ~ ~ 10 1 1

particle minecraft:gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[tag=id]

execute at @n[type=armor_stand,tag=hovered.slot,tag=id,distance=..100] run function cards:helper/get_adjacent_board
execute at @e[type=armor_stand,tag=is_adjacent,tag=filled,tag=id,distance=..100] as @n[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:consumable/attack/wind_charge/move