## Recurses to find nearest board segment
scoreboard players remove #raycast var 1
execute if block ~ ~ ~ #minecraft:logs positioned ^ ^ ^ at @n[type=armor_stand,tag=board,distance=..3] run return run function main:player/raycast/locate
execute if score #raycast var matches 1.. positioned ^ ^ ^.5 run function main:player/raycast/recurse
#particle minecraft:flame
