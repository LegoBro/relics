#playsound minecraft:entity.enderman.teleport master @a[tag=id] ~ ~ ~ 10 1 1
execute at @e[type=armor_stand,tag=destination,tag=id,limit=1] run setblock ~ ~1 ~ turtle_egg
execute at @e[type=armor_stand,tag=start,tag=id,limit=1] run fill ~ ~1 ~ ~ ~1 ~ air replace turtle_egg
