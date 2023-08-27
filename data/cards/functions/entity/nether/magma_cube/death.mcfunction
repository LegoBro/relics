## splits up on death, kinda funni init?

playsound minecraft:entity.magma_cube.death master @a[tag=id] ~ ~ ~ 1 0 1
tp @s 0 -200 0

execute positioned ~ ~-1 ~ at @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/nether/baby_magma_cube/summon
execute positioned ~4 ~-1 ~ at @e[type=armor_stand,tag=board,tag=id,tag=!filled,tag=!blocked,tag=!block,limit=1,sort=nearest,distance=..1.5] run function cards:entity/nether/baby_magma_cube/summon
execute positioned ~-4 ~-1 ~ at @e[type=armor_stand,tag=board,tag=id,tag=!filled,tag=!blocked,tag=!block,limit=1,sort=nearest,distance=..1.5] run function cards:entity/nether/baby_magma_cube/summon
execute unless score #friendly var matches 1 as @e[type=magma_cube,tag=new,tag=id] at @s run function cards:entity/nether/magma_cube/not_friendly
