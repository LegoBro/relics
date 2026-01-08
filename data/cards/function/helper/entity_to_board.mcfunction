## All entities with friendly tag copies it to their new state, all otherwise fail

##

execute if entity @s[tag=is_friendly] as @n[type=armor_stand,tag=board,tag=id,distance=..1.5] run function cards:helper/friendly

execute if entity @s[tag=!is_friendly] as @n[type=armor_stand,tag=board,tag=id,distance=..1.5] run function cards:helper/hostile

execute if entity @s[tag=is_movable] as @n[type=armor_stand,tag=board,tag=id,distance=..1.5] run tag @s add movable
execute as @n[type=armor_stand,tag=board,tag=id,distance=..1.5] run tag @s add filled

## Extra Cleanup
tag @s remove is_friendly
tag @s remove is_movable