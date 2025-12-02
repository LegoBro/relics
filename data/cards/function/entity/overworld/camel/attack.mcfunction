playsound minecraft:entity.camel.dash master @a[tag=id] ~ ~ ~ 10 1 1
scoreboard players operation #damage var = @s attack
execute if score @e[tag=attacker,tag=id,limit=1] strength matches 1.. run scoreboard players add #damage var 3
tag @e[tag=board,tag=id,distance=..1.5] add start
tag @e[tag=board,tag=id,distance=..1.5] add ram_start
tag @s add attacker
execute rotated ~ 0 positioned ^ ^ ^4 run function cards:entity/overworld/goat/ram