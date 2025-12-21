## Random spawn a silverfish
execute store result score #test var if entity @e[type=silverfish,tag=id]
execute if score #test var matches ..3 as @e[type=armor_stand,tag=board,tag=id,tag=!draw_pile,tag=!discard_pile,tag=!filled,tag=!blocked,tag=!block,limit=1,sort=random] at @s run tag @s add spawner.summon
execute as @e[type=armor_stand,tag=board,tag=id,tag=spawner.summon] at @s run data merge entity @s {CustomName:{"text":"Silverfish Spawner"}}
execute as @e[type=armor_stand,tag=board,tag=id,tag=spawner.summon] at @s run team join red @s
execute as @e[type=armor_stand,tag=board,tag=id,tag=spawner.summon] at @s run function cards:entity/overworld/silverfish/summon
tag @e[type=armor_stand,tag=id,tag=spawner.summon] remove spawner.summon

execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] store result score #friendly var if entity @s[tag=friendly]
execute unless score #friendly var matches 1 as @e[type=silverfish,tag=new,tag=id] at @s run function cards:entity/nether/magma_cube/not_friendly
