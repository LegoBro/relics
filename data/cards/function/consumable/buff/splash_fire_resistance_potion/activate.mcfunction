# hit with arrows

playsound minecraft:entity.snowball.throw master @a[tag=id] ~ ~ ~ 1 0 1

execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] run summon splash_potion ~ ~6 ~ {Item:{id:"minecraft:splash_potion",count:1b,components:{potion_contents:"minecraft:fire_resistance"}}}
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s fire_resistance 12
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~-4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s fire_resistance 12
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~ ~ ~4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s fire_resistance 12
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~ ~ ~-4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s fire_resistance 12
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s fire_resistance 12

function cards:consumable/generic/use_potion
