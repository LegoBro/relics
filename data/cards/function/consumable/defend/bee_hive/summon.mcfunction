# hit with arrows
execute at @s positioned ~4 ~ ~ as @e[type=armor_stand,tag=board,tag=!filled,tag=id,limit=1,distance=..1.5,sort=nearest] run tag @s add summon.bee
execute at @s positioned ~-4 ~ ~ as @e[type=armor_stand,tag=board,tag=!filled,tag=id,limit=1,distance=..1.5,sort=nearest] run tag @s add summon.bee
execute at @s positioned ~ ~ ~4 as @e[type=armor_stand,tag=board,tag=!filled,tag=id,limit=1,distance=..1.5,sort=nearest] run tag @s add summon.bee
execute at @s positioned ~ ~ ~-4 as @e[type=armor_stand,tag=board,tag=!filled,tag=id,limit=1,distance=..1.5,sort=nearest] run tag @s add summon.bee

execute as @e[type=armor_stand,tag=board,tag=id,tag=!draw_pile,tag=!discard_pile,tag=summon.bee,limit=1,sort=random] at @s run tag @s add summon.bee.chosen
execute as @e[type=armor_stand,tag=board,tag=id,tag=summon.bee.chosen] at @s run data merge entity @s {CustomName:{"text":"Bee Hive"}}
execute as @e[type=armor_stand,tag=board,tag=id,tag=summon.bee.chosen] at @s run team join red @s
execute as @e[type=armor_stand,tag=board,tag=id,tag=summon.bee.chosen] at @s run function cards:entity/overworld/bee/summon


execute as @e[type=armor_stand,tag=board,tag=id,limit=1,sort=nearest,distance=..1.5] store result score #friendly var if entity @s[tag=friendly]
execute unless score #friendly var matches 1 as @e[type=bee,tag=new,tag=id] at @s run function cards:helper/not_friendly

execute if entity @e[type=armor_stand,tag=id,tag=summon.bee.chosen] run function cards:consumable/defend/bee_hive/take_damage
tag @e[type=armor_stand,tag=id,tag=summon.bee] remove summon.bee
tag @e[type=armor_stand,tag=id,tag=summon.bee.chosen] remove summon.bee.chosen