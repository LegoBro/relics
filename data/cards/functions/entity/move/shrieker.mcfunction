
scoreboard players operation #shriek_friend var = #friendly var
execute if score #shriek_friend var matches 0 at @e[type=armor_stand,tag=destination,tag=id,limit=1] positioned ~-4 ~ ~ if entity @e[type=armor_stand,tag=board,distance=..1.5,tag=friendly] as @e[tag=sculk_shrieker,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:consumable/defend/sculk_shrieker/shriek
execute if score #shriek_friend var matches 0 at @e[type=armor_stand,tag=destination,tag=id,limit=1] positioned ~4 ~ ~ if entity @e[type=armor_stand,tag=board,distance=..1.5,tag=friendly] as @e[tag=sculk_shrieker,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:consumable/defend/sculk_shrieker/shriek
execute if score #shriek_friend var matches 0 at @e[type=armor_stand,tag=destination,tag=id,limit=1] positioned ~ ~ ~-4 if entity @e[type=armor_stand,tag=board,distance=..1.5,tag=friendly] as @e[tag=sculk_shrieker,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:consumable/defend/sculk_shrieker/shriek
execute if score #shriek_friend var matches 0 at @e[type=armor_stand,tag=destination,tag=id,limit=1] positioned ~ ~ ~4 if entity @e[type=armor_stand,tag=board,distance=..1.5,tag=friendly] as @e[tag=sculk_shrieker,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:consumable/defend/sculk_shrieker/shriek

execute if score #shriek_friend var matches 1 at @e[type=armor_stand,tag=destination,tag=id,limit=1] positioned ~-4 ~ ~ if entity @e[type=armor_stand,tag=board,distance=..1.5,tag=hostile] as @e[tag=sculk_shrieker,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:consumable/defend/sculk_shrieker/shriek
execute if score #shriek_friend var matches 1 at @e[type=armor_stand,tag=destination,tag=id,limit=1] positioned ~4 ~ ~ if entity @e[type=armor_stand,tag=board,distance=..1.5,tag=hostile] as @e[tag=sculk_shrieker,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:consumable/defend/sculk_shrieker/shriek
execute if score #shriek_friend var matches 1 at @e[type=armor_stand,tag=destination,tag=id,limit=1] positioned ~ ~ ~-4 if entity @e[type=armor_stand,tag=board,distance=..1.5,tag=hostile] as @e[tag=sculk_shrieker,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:consumable/defend/sculk_shrieker/shriek
execute if score #shriek_friend var matches 1 at @e[type=armor_stand,tag=destination,tag=id,limit=1] positioned ~ ~ ~4 if entity @e[type=armor_stand,tag=board,distance=..1.5,tag=hostile] as @e[tag=sculk_shrieker,tag=id,limit=1,sort=nearest,distance=..1.5] at @s run function cards:consumable/defend/sculk_shrieker/shriek