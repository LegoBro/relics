## Spawn vex
#execute if entity @s[team=green] as @e[type=armor_stand,tag=board,tag=id,tag=!draw_pile,tag=!discard_pile,tag=!filled,tag=!blocked,tag=!block,limit=1,sort=random] at @s run function cards:entity/overworld/vex/summon

execute as @e[type=armor_stand,tag=board,tag=id,tag=!draw_pile,tag=!discard_pile,tag=!filled,tag=!blocked,tag=!block,limit=1,sort=random] at @s run tag @s add evoker.summon
execute as @e[type=armor_stand,tag=board,tag=id,tag=evoker.summon] at @s run data merge entity @s {CustomName:{"text":"Evoker"}}
execute as @e[type=armor_stand,tag=board,tag=id,tag=evoker.summon] at @s run team join red @s
execute as @e[type=armor_stand,tag=board,tag=id,tag=evoker.summon] at @s run function cards:entity/overworld/vex/summon
tag @e[type=armor_stand,tag=id,tag=evoker.summon] remove evoker.summon

execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] store result score #friendly var if entity @s[tag=friendly]
execute unless score #friendly var matches 1 as @e[type=vex,tag=new,tag=id] at @s run function cards:entity/nether/magma_cube/not_friendly
