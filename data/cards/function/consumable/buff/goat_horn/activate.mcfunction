# Goat horn
# Evoker, Pillager, Ravager, Vindicator, Camel and Goat
playsound minecraft:item.goat_horn.sound.1 hostile @a[tag=id] ~ ~ ~ 1 1 1

execute at @e[type=armor_stand,tag=filled,tag=id,tag=friendly] run tag @e[tag=card.entity,tag=evoker,distance=..2] add apply_horn
execute at @e[type=armor_stand,tag=filled,tag=id,tag=friendly] run tag @e[tag=card.entity,tag=pillager,distance=..2] add apply_horn
execute at @e[type=armor_stand,tag=filled,tag=id,tag=friendly] run tag @e[tag=card.entity,tag=ravager,distance=..2] add apply_horn
execute at @e[type=armor_stand,tag=filled,tag=id,tag=friendly] run tag @e[tag=card.entity,tag=vindicator,distance=..2] add apply_horn
execute at @e[type=armor_stand,tag=filled,tag=id,tag=friendly] run tag @e[tag=card.entity,tag=camel,distance=..2] add apply_horn
execute at @e[type=armor_stand,tag=filled,tag=id,tag=friendly] run tag @e[tag=card.entity,tag=goat,distance=..2] add apply_horn
execute as @e[tag=apply_horn,tag=id,sort=nearest] run scoreboard players add @s speed_pot 1
tag @e[tag=apply_horn,tag=id] remove apply_horn
execute at @e[type=armor_stand,tag=filled,tag=id,tag=friendly] run tag @e[tag=card.entity,tag=camel,distance=..2] add apply_horn
execute at @e[type=armor_stand,tag=filled,tag=id,tag=friendly] run tag @e[tag=card.entity,tag=goat,distance=..2] add apply_horn
execute as @e[tag=apply_horn,tag=id,sort=nearest] run scoreboard players add @s strength 1
tag @e[tag=apply_horn,tag=id] remove apply_horn
kill @e[type=area_effect_cloud,tag=rename,tag=id]
