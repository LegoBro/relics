## Displays nametag above entity
#execute store result score #count var if entity @e[type=area_effect_cloud,tag=display_health,distance=..1,tag=id]

execute if score #holding_card var matches 1.. run return run function main:player/raycast/use/hover

execute as @n[tag=card.building,limit=1,distance=..2,sort=nearest] run function main:player/raycast/display/entity
title @s actionbar [{"score":{"name":"#armor","objective":"var"},"color":"gray","bold":true},{"translate":"🛡","color":"white","bold":false},{"text":" "},{"score":{"name":"#health","objective":"var"},"color":"red","bold":true},{"text":"/","color":"red","bold":false},{"score":{"name":"#maxHealth","objective":"var"},"color":"red","bold":true},{"translate":"♥","color":"white","bold":false}]

