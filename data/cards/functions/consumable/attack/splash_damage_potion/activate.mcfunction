# hit with arrows
playsound minecraft:entity.splash_potion.throw master @a[tag=id] ~ ~ ~ 10 1 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] run summon potion ~ ~5 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:harming",Enchantments:[{}]}}}
scoreboard players set #damage var 2
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~4 ~ ~ as @e[tag=card.entity,tag=!undead,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_pierce_damage
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~-4 ~ ~ as @e[tag=card.entity,tag=!undead,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_pierce_damage
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~4 as @e[tag=card.entity,tag=!undead,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_pierce_damage
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~-4 as @e[tag=card.entity,tag=!undead,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_pierce_damage
scoreboard players set #damage var 3
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=!undead,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_pierce_damage

scoreboard players set #heal var 1
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~4 ~ ~ as @e[tag=card.entity,tag=undead,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~-4 ~ ~ as @e[tag=card.entity,tag=undead,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~4 as @e[tag=card.entity,tag=undead,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~-4 as @e[tag=card.entity,tag=undead,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal
scoreboard players set #heal var 2
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=undead,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/heal