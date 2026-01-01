# Draw random card(s)

scoreboard players set #damage var 0
execute as @e[tag=card.entity,tag=id] run scoreboard players operation #damage var -= @s armor
execute as @e[tag=card.entity,tag=id] at @s run function cards:entity/display/armor_destroy

execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] at @s positioned ~ ~0.5 ~ run function cards:entity/display/armor_change
kill @e[type=area_effect_cloud,tag=rename,tag=id]
