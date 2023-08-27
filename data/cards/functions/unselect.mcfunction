## Unselect an entity
tag @s remove needs_vibration
tag @e[type=armor_stand,tag=hovered.slot,tag=id,tag=selected] remove selected
tag @s remove selected
effect clear @e[tag=card.entity,tag=id,limit=1,sort=nearest] glowing
execute as @e[tag=board,tag=id] run function main:board/cell/display
