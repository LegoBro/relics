playsound minecraft:entity.player.death master @a[tag=id] ~ ~ ~ 10 1 1

# Steve
execute if score @s set.hero matches 0 run function cards:entity/hero/steve/death/0
# Alex
execute if score @s set.hero matches 1 run function cards:entity/hero/steve/death/1
execute if score @s set.hero matches 2 run function cards:entity/hero/steve/death/2
execute if score @s set.hero matches 3 run function cards:entity/hero/steve/death/3
execute if score @s set.hero matches 4 run function cards:entity/hero/steve/death/4
execute if score @s set.hero matches 5 run function cards:entity/hero/steve/death/5
execute if score @s set.hero matches 6 run function cards:entity/hero/steve/death/6
# Etho
execute if score @s set.hero matches 7 run function cards:entity/hero/steve/death/7
# LegoBro
execute if score @s set.hero matches 8 run function cards:entity/hero/steve/death/8

execute as @e[type=armor_stand,tag=steve,tag=id,distance=1..] at @s run function cards:entity/hero/steve/victory