## Checks nearby targets, if so, add 1 to attack
scoreboard players set #targets_check var 0

function card:helper/get_adjacent_board
execute as @e[tag=id,tag=is_adjacent] at @s if entity @n[tag=id,tag=card.building,tag=targets,distance=..1.5] run scoreboard players add #targets_check var 1

execute if score #targets_check var matches 1.. run scoreboard players add #attack var 1