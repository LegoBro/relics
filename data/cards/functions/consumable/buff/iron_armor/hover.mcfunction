# hit with anvil
scoreboard players set #damage var -3
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] at @s run function cards:entity/display/armor_change
kill @e[type=area_effect_cloud,tag=rename,tag=id]
