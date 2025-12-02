## travel ie using Teleport
tag @s add moving
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add destination
tag @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=id] add start
execute unless entity @e[type=armor_stand,tag=hovered.slot,tag=destination,tag=filled,tag=id,limit=1] run function cards:entity/move
tag @e[tag=moving,tag=id] remove moving
tag @e[tag=destination,tag=id] remove destination
tag @e[tag=start,tag=id] remove start

#say travelling
