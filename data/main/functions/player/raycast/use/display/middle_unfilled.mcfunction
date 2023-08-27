## Displays for the front

execute if score #selected.z var matches 2..4 as @e[type=armor_stand,tag=hovered.slot,tag=id] run function main:player/raycast/display/no_filled
execute unless score #selected.z var matches 2..4 as @e[type=armor_stand,tag=hovered.slot,tag=id] run function main:player/raycast/display/fail
