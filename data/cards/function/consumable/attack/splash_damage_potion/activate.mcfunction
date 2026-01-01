# hit with arrows
playsound minecraft:entity.splash_potion.throw master @a[tag=id] ~ ~ ~ 10 1 1
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] run summon splash_potion ~ ~5 ~ {Item:{id:"minecraft:splash_potion",count:1b,components:{potion_contents:"minecraft:harming"}}}

scoreboard players set #undead var -1
scoreboard players set #normal var 2
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/damage/potion
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~-4 ~ ~ as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/damage/potion
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~ ~ ~4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/damage/potion
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] positioned ~ ~ ~-4 as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/damage/potion

scoreboard players set #undead var -2
scoreboard players set #normal var 3
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest,distance=..1.5] run function cards:entity/damage/potion




function cards:consumable/defend/witch_hut/detect
scoreboard players add @s play.potion 1