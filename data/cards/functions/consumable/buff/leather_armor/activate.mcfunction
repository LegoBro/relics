# hit with anvil
playsound minecraft:item.armor.equip_leather hostile @a[tag=id] ~ ~ ~ 1 1.25 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run scoreboard players add @s armor 1
kill @e[type=area_effect_cloud,tag=rename,tag=id]
scoreboard players add @s play.armor 1
