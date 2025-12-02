## Find the nearest board segment
scoreboard players reset #raycast var
tag @e[type=armor_stand,tag=board,limit=1,sort=nearest,tag=id] add hovered.slot

effect clear @e[type=armor_stand,tag=board,tag=id,tag=!selected] minecraft:glowing

execute as @e[type=armor_stand,tag=hovered.slot,tag=id] run function main:board/get_coords

execute at @e[type=armor_stand,tag=hovered.slot,tag=id,tag=filled,tag=!blocked] positioned ~ ~3.5 ~ run function main:player/raycast/display/nametag
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,tag=filled,tag=blocked] positioned ~ ~3.5 ~ run function main:player/raycast/display/block
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,tag=!filled,tag=draw_pile] positioned ~ ~3.5 ~ run function main:player/raycast/display/draw
execute at @e[type=armor_stand,tag=hovered.slot,tag=id,tag=!filled,tag=!draw_pile] run title @s actionbar ""


execute unless score #ignored var matches 1 if entity @s[tag=!selected,nbt={SelectedItem:{tag:{card:{}}}}] run function main:player/raycast/use/hover
execute if entity @s[tag=!selected,nbt={SelectedItem:{tag:{selector:1b}}}] run function main:player/raycast/select/hover
execute unless score #ignored var matches 1 if entity @s[tag=selected] run function main:player/raycast/selected/hover

tag @e[tag=hovered.slot] remove hovered.slot
