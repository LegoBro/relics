# hit with anvil
playsound minecraft:item.armor.equip_elytra hostile @a[tag=id] ~ ~ ~ 1 0.5 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run scoreboard players add @s speed 9
execute at @e[type=armor_stand,tag=friendly,tag=filled,tag=id] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,tag=!hero.1,tag=!hero.2] run scoreboard players add @s speed 1
kill @e[type=area_effect_cloud,tag=rename,tag=id]
