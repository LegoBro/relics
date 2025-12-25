## Lunging

## Get Start and destination positions
execute as @n[tag=board,tag=start,distance=..100] run function main:board/cell/get/pos
scoreboard players operation #startX var = #x var
scoreboard players operation #startZ var = #z var

execute as @n[tag=board,tag=destination,distance=..100] run function main:board/cell/get/pos
scoreboard players operation #destX var = #x var
scoreboard players operation #destZ var = #z var

## See if the entity has moved diagonally, nullifying the extra attack

execute unless score #startX var = #destX var unless score #startZ var = #destZ var run return 0
# Force start to always be lower than end:
execute if score #startX var > #destX var run scoreboard players operation #startX var >< #destX var
execute if score #startZ var > #destZ var run scoreboard players operation #startZ var >< #destZ var

execute if score #startZ var = #destZ var run return run function cards:entity/attack/lunging/x
function cards:entity/attack/lunging/z