# hit with arrows
playsound entity.blaze.shoot master @a[tag=id] ~ ~ ~ 1 1.5 1

scoreboard players set #fire var 0
scoreboard players set #poison var 2
scoreboard players set #wither var 2

execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] run summon dragon_fireball ~ ~6 ~ {power:[0.0,-0.5,0.0]}
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~-4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~-4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
