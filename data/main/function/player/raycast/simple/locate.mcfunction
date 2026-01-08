## Find the nearest board segment
scoreboard players reset #raycast var
tag @e[tag=hovered.slot] remove hovered.slot
tag @e[type=armor_stand,tag=board,limit=1,sort=nearest] add hovered.slot

execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=!blocked] run function main:player/raycast/display/entity
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=blocked] run function main:player/raycast/display/building
execute at @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=draw_pile] run function main:player/raycast/display/draw
execute at @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=!draw_pile] run title @s actionbar ""

