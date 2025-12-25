## Displays for the front
execute as @e[type=armor_stand,tag=hovered.slot,tag=id] run team join red @s
execute if score #z var matches 1..5 as @e[type=armor_stand,tag=hovered.slot,tag=id,tag=!filled] run team join green @s
