## travel ie using Teleport
tag @s add moving
tag @n[type=armor_stand,tag=hovered.slot,tag=id,distance=..100] add destination
tag @n[type=armor_stand,tag=board,distance=..100,tag=id] add start
execute unless entity @e[type=armor_stand,tag=hovered.slot,tag=destination,tag=filled,tag=id,limit=1] run function cards:entity/move
tag @e[tag=moving,tag=id,distance=..100] remove moving
tag @e[tag=destination,tag=id,distance=..100] remove destination
tag @e[tag=start,tag=id,distance=..100] remove start



#say travelling
