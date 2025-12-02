# BLINDNESS
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run tag @s add blindable
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run tag @s add blindable
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~ ~ ~4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run tag @s add blindable
execute at @e[type=armor_stand,tag=board,tag=filled,tag=id,limit=1,sort=nearest] positioned ~ ~ ~-4 as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run tag @s add blindable

scoreboard players set @e[tag=id,limit=1,sort=random,tag=blindable] blindness 1
tag @e[tag=id,tag=blindable] remove blindable