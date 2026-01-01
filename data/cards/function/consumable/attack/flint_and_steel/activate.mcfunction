# hit with arrows
playsound item.flintandsteel.use master @a[tag=id] ~ ~ ~ 1 0.75 1

scoreboard players set #fire var 5
scoreboard players set #poison var 0
scoreboard players set #wither var 0


execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:entity/explode_check
