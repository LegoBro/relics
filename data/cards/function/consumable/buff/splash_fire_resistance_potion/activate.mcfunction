# hit with arrows

playsound minecraft:entity.snowball.throw master @a[tag=id] ~ ~ ~ 1 0 1

execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] run summon potion ~ ~6 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:fire_resistance"}}}
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s fire_resistance 12
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~-4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s fire_resistance 12
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s fire_resistance 12
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] positioned ~ ~ ~-4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s fire_resistance 12
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run scoreboard players set @s fire_resistance 12
scoreboard players add @s play.potion 1
