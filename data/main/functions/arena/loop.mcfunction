## Loops through existing boards and stops when one doesn't exist
scoreboard players set #exist var 0
execute as @a if score @s id = #loop var run scoreboard players add #exist var 1
execute if score #exist var matches 1.. run scoreboard players add #loop var 1
execute if score #exist var matches 1.. run function main:arena/loop
#tellraw @p {"score":{"name":"#loop","objective":"var"},"color":"dark_aqua"}
