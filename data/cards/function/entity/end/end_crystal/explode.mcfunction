## explosions!
#playsound minecraft:entity.generic.eat master @a[tag=id] ~ ~ ~ 10 1 1
scoreboard players set #damage var 5
execute positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5,scores={health=1..}] run function cards:entity/apply_damage
execute positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5,scores={health=1..}] run function cards:entity/apply_damage
execute positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5,scores={health=1..}] run function cards:entity/apply_damage
execute positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5,scores={health=1..}] run function cards:entity/apply_damage

playsound minecraft:entity.generic.explode hostile @a[tag=id] ~ ~ ~ 10 1 1
