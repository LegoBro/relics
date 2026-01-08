## Displays nametag above entity
#execute store result score #count var if entity @e[type=area_effect_cloud,tag=display_health,distance=..1,tag=id]

execute if score #holding_card var matches 1.. run return run function main:player/raycast/use/hover

function main:player/raycast/display/building

