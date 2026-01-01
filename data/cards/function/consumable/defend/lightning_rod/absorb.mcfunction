summon minecraft:lightning_bolt ~ ~1 ~

# AOE first
scoreboard players set #damage var 3
execute positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
scoreboard players set #damage var 3
execute positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
scoreboard players set #damage var 3
execute positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
scoreboard players set #damage var 3
execute positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_damage
scoreboard players set #damage var 3
execute positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/convert_by_lightning
scoreboard players set #damage var 3
execute positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/convert_by_lightning
scoreboard players set #damage var 3
execute positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/convert_by_lightning
scoreboard players set #damage var 3
execute positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/convert_by_lightning

## Convert to OG copper
scoreboard players set @s turnTimer 0
fill ~1 ~ ~1 ~-1 ~ ~-1 waxed_copper_block
setblock ~ ~1 ~ lightning_rod