## Adds 1 to distance and calls recursive distances function
scoreboard players operation @s distance = #distance var
tag @s add new_distance
#tag @s[tag=filled] add distance
tag @s[tag=blocked] add distance
