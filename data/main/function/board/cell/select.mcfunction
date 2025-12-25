## When cell is selected, get entity, and calculate options
tag @s add selected

scoreboard players operation #x var = @s x
scoreboard players operation #z var = @s z

## Select Entity
execute as @n[tag=card.entity,distance=..5,tag=id] run function cards:entity/select