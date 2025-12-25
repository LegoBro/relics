## Displays nametag above entity
#execute store result score #count var if entity @e[type=area_effect_cloud,tag=display_health,distance=..1,tag=id]

#execute if score #count var matches ..4 positioned ~ ~-3.5 ~ as @e[tag=card.entity,tag=id,limit=1,distance=..2,sort=nearest] positioned ~ ~3.5 ~ run function main:player/raycast/display/entity
execute positioned ~ ~-3.5 ~ as @e[tag=card.building,limit=1,distance=..2,sort=nearest] positioned ~ ~3.5 ~ run function main:player/raycast/display/entity
title @s actionbar [{"score":{"name":"#armor","objective":"var"},"color":"gray","bold":true},{"translate":"🛡","color":"white","bold":false},{"text":" "},{"score":{"name":"#health","objective":"var"},"color":"red","bold":true},{"text":"/","color":"red","bold":false},{"score":{"name":"#maxHealth","objective":"var"},"color":"red","bold":true},{"translate":"♥","color":"white","bold":false}]

execute if score #holding_card var matches 1.. run function main:player/raycast/use/hover