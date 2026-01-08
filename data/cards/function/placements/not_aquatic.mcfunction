## Displays for the front
execute as @e[type=armor_stand,tag=hovered.slot,tag=id] run team join red @s
execute if score #z var matches 1..5 as @e[type=armor_stand,tag=hovered.slot,tag=id,tag=filled] if entity @e[tag=card.entity,tag=!water,limit=1,sort=nearest,distance=..2] run team join green @s
