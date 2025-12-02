playsound minecraft:entity.skeleton_horse.death master @a[tag=id] ~ ~ ~ 10 0 1
execute if entity @s[tag=player.2] run tp @e[type=skeleton,tag=card.passenger,tag=id,sort=nearest,limit=1] ~ ~1 ~ 180 ~
