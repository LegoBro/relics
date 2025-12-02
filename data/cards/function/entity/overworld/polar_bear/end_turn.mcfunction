# hit with arrows
#playsound entity.arrow.shoot master @a[tag=id] ~ ~ ~ 10 1 1
execute at @s positioned ~4 ~ ~ if entity @e[tag=card.entity,tag=cub,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players add @s attack 1
execute at @s positioned ~-4 ~ ~ if entity @e[tag=card.entity,tag=cub,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players add @s attack 1
execute at @s positioned ~ ~ ~4 if entity @e[tag=card.entity,tag=cub,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players add @s attack 1
execute at @s positioned ~ ~ ~-4 if entity @e[tag=card.entity,tag=cub,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players add @s attack 1
