## Death effects

function cards:helper/tag_friendlies
tag @s add silverfish_origin

execute as @e[type=armor_stand,tag=id,tag=card.building] at @s run function cards:entity/overworld/silverfish/convert
playsound minecraft:entity.silverfish.death master @a[tag=id] ~ ~ ~ 10 1 1
