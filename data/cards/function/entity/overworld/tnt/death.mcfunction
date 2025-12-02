playsound minecraft:entity.creeper.death master @a[tag=id] ~ ~ ~ 10 0.8 1

scoreboard players set #killed var 0
scoreboard players set #damage var 5
execute positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5,scores={health=1..}] run function cards:entity/apply_damage
execute if score #killed var matches 1 run scoreboard players add @p[tag=id,tag=turn] tnt.kills 1
scoreboard players set #killed var 0
execute positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5,scores={health=1..}] run function cards:entity/apply_damage
execute if score #killed var matches 1 run scoreboard players add @p[tag=id,tag=turn] tnt.kills 1
scoreboard players set #killed var 0
execute positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5,scores={health=1..}] run function cards:entity/apply_damage
execute if score #killed var matches 1 run scoreboard players add @p[tag=id,tag=turn] tnt.kills 1
scoreboard players set #killed var 0
execute positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5,scores={health=1..}] run function cards:entity/apply_damage
execute if score #killed var matches 1 run scoreboard players add @p[tag=id,tag=turn] tnt.kills 1

playsound minecraft:entity.generic.explode hostile @a[tag=id] ~ ~ ~ 10 1 1
