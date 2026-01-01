# hit with gapple
playsound minecraft:entity.player.burp master @a[tag=id] ~ ~ ~ 10 0.75 1
scoreboard players set #heal var 2
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:entity/heal
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run scoreboard players add @s health 2
kill @e[type=area_effect_cloud,tag=rename,tag=id]
