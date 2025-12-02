# hit with arrows
scoreboard players set #fire var 5
scoreboard players set #poison var 0
scoreboard players set #wither var 0


execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:entity/display/dot
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:entity/display/explode_check
