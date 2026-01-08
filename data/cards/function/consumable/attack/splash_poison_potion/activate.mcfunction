# hit with arrows
playsound minecraft:entity.snowball.throw master @a[tag=id] ~ ~ ~ 1 0 1
scoreboard players set #fire var 0
scoreboard players set #poison var 6
scoreboard players set #wither var 0

execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] run summon splash_potion ~ ~6 ~ {Item:{id:"minecraft:splash_potion",count:1b,components:{potion_contents:"minecraft:poison"}}}
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~-4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~ ~ ~4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~ ~ ~-4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot

function cards:consumable/generic/use_potion