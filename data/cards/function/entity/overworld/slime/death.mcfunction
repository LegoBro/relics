## splits up on death, kinda funni init?

tp @s 0 -200 0

execute positioned ~ ~-1 ~ at @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/overworld/baby_slime/summon
execute positioned ~4 ~-1 ~ at @e[type=armor_stand,tag=board,tag=id,tag=!filled,tag=!blocked,tag=!block,limit=1,sort=nearest,distance=..1.5] run function cards:entity/overworld/baby_slime/summon
execute positioned ~-4 ~-1 ~ at @e[type=armor_stand,tag=board,tag=id,tag=!filled,tag=!blocked,tag=!block,limit=1,sort=nearest,distance=..1.5] run function cards:entity/overworld/baby_slime/summon
execute unless score #friendly var matches 1 as @e[type=slime,tag=new,tag=id] at @s run function cards:helper/not_friendly

playsound minecraft:entity.slime.death master @a[tag=id] ~ ~ ~ 10 1 1
