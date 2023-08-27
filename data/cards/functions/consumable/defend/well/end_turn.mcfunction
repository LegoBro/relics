# Healing
scoreboard players set #heal var 2
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~4 ~ ~ as @e[tag=card.entity,tag=!hero.1,tag=!hero.2,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~-4 ~ ~ as @e[tag=card.entity,tag=!hero.1,tag=!hero.2,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~ ~ ~4 as @e[tag=card.entity,tag=!hero.1,tag=!hero.2,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~ ~ ~-4 as @e[tag=card.entity,tag=!hero.1,tag=!hero.2,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal
