## Displays for the front
execute as @e[type=armor_stand,tag=hovered.slot,tag=id] run team join red @s
execute if score #selected.z var matches 1..5 as @e[type=armor_stand,tag=hovered.slot,tag=id,tag=filled,tag=friendly,tag=!blocked] at @s if entity @e[tag=id,tag=card.entity,limit=1,sort=nearest,scores={range=1},distance=..1.5] run team join green @s
