## Loops in z direction
scoreboard players remove #loop var 12
tp @s ~ ~ ~48
execute if score #loop var matches 12.. at @s positioned ~ ~ ~ run function main:arena/anchor/position_loop_z
