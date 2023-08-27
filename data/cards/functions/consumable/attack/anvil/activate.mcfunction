# hit with anvil
playsound block.anvil.land master @a[tag=id] ~ ~ ~ 1 0 1
scoreboard players set #damage var 4
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] run summon armor_stand ~ ~6 ~ {Invisible:1b,Tags:["animation","fall"],ArmorItems:[{},{},{},{id:"minecraft:rail",Count:1b}]}
execute at @e[type=armor_stand,tag=hovered.slot,tag=filled,tag=id,limit=1] as @e[tag=card.entity,tag=id,limit=1,sort=nearest] run function cards:entity/apply_damage
