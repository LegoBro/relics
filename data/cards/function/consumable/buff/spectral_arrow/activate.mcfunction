# hit with anvil
playsound minecraft:block.bell.resonate hostile @a[tag=id] ~ ~ ~ 1 2 1
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run scoreboard players add @s range 1
kill @e[type=area_effect_cloud,tag=rename,tag=id]
