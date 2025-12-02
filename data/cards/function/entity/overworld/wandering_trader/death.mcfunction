# LLAMA TIME
execute positioned ~ ~-1 ~ at @e[type=armor_stand,tag=board,tag=!filled,tag=!blocked,tag=!block,tag=id,limit=1,sort=nearest,distance=..1.5] run data merge entity @s {CustomName:'{"text":"Wandering Trader"}'}
execute positioned ~ ~-1 ~ at @e[type=armor_stand,tag=board,tag=!filled,tag=!blocked,tag=!block,tag=id,limit=1,sort=nearest,distance=..1.5] run team join red @s
execute positioned ~ ~-1 ~ at @e[type=armor_stand,tag=board,tag=!filled,tag=!blocked,tag=!block,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/overworld/llama/summon

execute unless score #friendly var matches 1 as @e[type=llama,tag=new,tag=id] at @s run function cards:entity/nether/magma_cube/not_friendly

playsound minecraft:entity.wandering_trader.death master @a[tag=id] ~ ~ ~ 10 1 1
