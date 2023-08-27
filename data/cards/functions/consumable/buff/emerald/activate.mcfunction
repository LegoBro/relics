# hit with anvil
playsound entity.villager.yes master @a[tag=id] ~ ~ ~ 1 1 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:consumable/buff/emerald/buff
kill @e[type=area_effect_cloud,tag=rename,tag=id]
