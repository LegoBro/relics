# hit with anvil
playsound block.anvil.land master @a[tag=id] ~ ~ ~ 1 0 1
scoreboard players set #damage var 4
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] run summon armor_stand ~ ~6 ~ {Invisible:1b,Tags:["animation","fall"],equipment:{head:{id:"minecraft:rail",count:1b}}}
execute at @n[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,distance=..100] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:entity/apply_damage
