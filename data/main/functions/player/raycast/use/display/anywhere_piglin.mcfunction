## Displays for the front
execute as @e[type=armor_stand,tag=hovered.slot,tag=id] run team join red @s
execute if score #selected.z var matches 1..5 as @e[type=armor_stand,tag=hovered.slot,tag=id,tag=filled] if entity @e[tag=card.entity,tag=piglin,limit=1,sort=nearest,distance=..2] run team join green @s
execute if score #selected.z var matches 1..5 as @e[type=armor_stand,tag=hovered.slot,tag=id,tag=filled] if entity @e[tag=card.entity,tag=piglin_brute,limit=1,sort=nearest,distance=..2] run team join green @s
