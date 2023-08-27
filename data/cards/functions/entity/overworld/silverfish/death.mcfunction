## Death effects
execute as @e[type=armor_stand,tag=id,tag=cobblestone] at @s run function cards:entity/overworld/silverfish/convert
playsound minecraft:entity.silverfish.death master @a[tag=id] ~ ~ ~ 10 1 1
