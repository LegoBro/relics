# Heals itself per every end crystal on board
scoreboard players set #heal var 0
execute as @e[tag=id,tag=end_crystal] run scoreboard players add #heal var 2
execute if score #heal var matches 1.. run function cards:entity/heal
