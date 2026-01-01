# hit with arrows
function main:player/raycast/display/attack/reset
scoreboard players set #damage var 1
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/display/damage
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~-4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/display/damage
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~ ~ ~4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/display/damage
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~ ~ ~-4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/display/damage
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/display/damage
function main:player/raycast/display/attack/display