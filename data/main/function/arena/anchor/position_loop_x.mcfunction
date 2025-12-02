## Loops in x direction
scoreboard players remove #loop var 1
tp @s ~48 ~ ~
execute if score #loop var matches 1.. positioned ~48 ~ ~ run function main:arena/anchor/position_loop_x
