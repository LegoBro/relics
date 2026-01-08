# Goat horn
# Evoker, Pillager, Ravager, Vindicator, Camel and Goat
playsound minecraft:item.goat_horn.sound.1 hostile @a[tag=id] ~ ~ ~ 1 1 1

function cards:helper/tag_friendlies

tag @e[tag=card.entity,tag=is_friendly,tag=illager] add apply_horn
tag @e[tag=card.entity,tag=is_friendly,tag=lunging] add apply_horn
execute as @e[tag=apply_horn,tag=id,sort=nearest] run scoreboard players add @s speed_pot 1
tag @e[tag=apply_horn,tag=id] remove apply_horn

tag @e[tag=card.entity,tag=is_friendly,tag=lunging] add apply_horn
execute as @e[tag=apply_horn,tag=id,sort=nearest] run scoreboard players add @s strength 1
tag @e[tag=apply_horn,tag=id] remove apply_horn
kill @e[type=area_effect_cloud,tag=rename,tag=id]
