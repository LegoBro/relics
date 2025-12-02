# Rotten Flesh
playsound minecraft:block.honey_block.break hostile @a[tag=id] ~ ~ ~ 1 0 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run scoreboard players add @s attack 1
scoreboard players set #heal var 2
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:entity/heal
kill @e[type=area_effect_cloud,tag=rename,tag=id]
