execute if score #movement var matches 1 positioned ~ ~ ~4 run tag @e[tag=id,tag=board,tag=!filled,limit=1,distance=..1.5] add destination
execute if score #movement var matches -1 positioned ~ ~ ~-4 run tag @e[tag=id,tag=board,tag=!filled,limit=1,distance=..1.5] add destination


execute if entity @e[tag=id,tag=destination] run tag @s add moving
execute if entity @e[tag=id,tag=destination] run tag @e[tag=board,limit=1,distance=..1.5] add start

function cards:consumable/defend/block/move

