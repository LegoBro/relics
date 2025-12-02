## Moves the entity
tag @e[tag=card.entity,tag=id,limit=1,sort=nearest] add moving
execute if entity @e[tag=moving,tag=id,limit=1,sort=nearest,tag=in_minecart] run kill @e[type=minecart,distance=..1.5]
execute if entity @e[tag=moving,tag=id,limit=1,sort=nearest,tag=moved_minecart] run kill @e[type=minecart,distance=..1.5]
tag @e[tag=moving,tag=id,limit=1,sort=nearest] remove in_minecart
tag @e[tag=moving,tag=id,limit=1,sort=nearest] remove moved_minecart
tag @e[type=armor_stand,tag=hovered.slot,tag=id,limit=1] add destination
tag @e[type=armor_stand,tag=selected,tag=id] add start
function cards:entity/move

tag @s remove ender_pearl
tag @s remove selected
