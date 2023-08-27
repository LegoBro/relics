## Death effects
playsound minecraft:entity.skeleton_horse.death master @a[tag=id] ~ ~ ~ 10 1 1
execute at @s run kill @e[type=skeleton,tag=card.passenger,limit=1,sort=nearest]
