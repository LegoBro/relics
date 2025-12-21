# hit with arrows
playsound entity.blaze.shoot master @a[tag=id] ~ ~ ~ 1 1.5 1

scoreboard players set #fire var 3
scoreboard players set #poison var 0
scoreboard players set #wither var 0

execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~4 ~ ~ run summon snowball ~ ~6 ~ {Item:{id:"minecraft:fire_charge",count:1b}}
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~-4 ~ ~ run summon snowball ~ ~6 ~ {Item:{id:"minecraft:fire_charge",count:1b}}
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] run summon snowball ~ ~6 ~ {Item:{id:"minecraft:fire_charge",count:1b}}

execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~-4 ~ ~ as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=attackable,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/apply_dot
