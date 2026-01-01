# hit with f&s
## See if explodey first
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] if function cards:entity/display/explode_check as @p[tag=id,tag=turn] run return run function cards:entity/display/explode

function main:player/raycast/display/attack/reset
scoreboard players set #fire var 5
scoreboard players set #poison var 0
scoreboard players set #wither var 0


execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:entity/display/damage

function main:player/raycast/display/attack/display