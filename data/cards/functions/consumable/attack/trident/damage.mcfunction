summon minecraft:lightning_bolt ~ ~1 ~

# AOE first
scoreboard players set #damage var 3
execute positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
execute positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/convert_by_lightning
execute positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/convert_by_lightning
execute positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/convert_by_lightning
execute positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/convert_by_lightning

scoreboard players set #damage var 7
execute as @e[tag=attackable,tag=id,limit=1,sort=nearest] run function cards:entity/apply_damage
execute as @e[tag=attackable,tag=id,limit=1,sort=nearest] run function cards:entity/convert_by_lightning
