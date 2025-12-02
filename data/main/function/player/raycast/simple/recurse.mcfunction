## Recurses to find nearest board segment
scoreboard players remove #raycast var 1
execute if block ~ ~ ~ #minecraft:logs positioned ^ ^ ^ run function main:player/raycast/simple/locate
execute if score #raycast var matches 1.. positioned ^ ^ ^.5 run function main:player/raycast/simple/recurse
#particle minecraft:flame
