execute if score #movement var matches 1 positioned ~ ~ ~4 run tag @e[tag=id,tag=board,tag=!filled,limit=1,distance=..1.5] add destination
execute if score #movement var matches -1 positioned ~ ~ ~-4 run tag @e[tag=id,tag=board,tag=!filled,limit=1,distance=..1.5] add destination


execute if entity @e[tag=id,tag=destination] run tag @s add moving
execute if entity @e[tag=id,tag=destination] run tag @e[tag=board,limit=1,distance=..1.5] add start
execute if entity @e[tag=id,tag=start,tag=movable] run tag @e[tag=id,tag=destination] add movable.skip
function cards:entity/move
tag @e[tag=id,tag=movable.skip] remove movable.skip
