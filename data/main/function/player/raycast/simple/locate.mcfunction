## Find the nearest board segment
scoreboard players reset #raycast var
tag @e[type=armor_stand,tag=board,limit=1,sort=nearest] add hovered.slot

execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=!blocked] positioned ~ ~3.5 ~ run function main:player/raycast/display/nametag
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=blocked] positioned ~ ~3.5 ~ run function main:player/raycast/display/block
execute at @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=draw_pile] positioned ~ ~3.5 ~ run function main:player/raycast/display/draw
execute at @e[type=armor_stand,tag=hovered.slot,tag=!filled,tag=!draw_pile] run title @s actionbar ""

tag @e[tag=hovered.slot] remove hovered.slot
