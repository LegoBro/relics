## Adds 1 to distance and calls recursive distances function
scoreboard players operation @s distance = #distance var
tag @s add new_distance
#tag @s[tag=filled] add distance
execute if score #skip_blocking var matches 0 run tag @s[tag=blocked] add distance
