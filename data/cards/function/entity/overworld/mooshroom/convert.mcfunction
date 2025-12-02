## Make mooshroom brown epic
tag @s add brown
data merge entity @s {Type:"red"}
scoreboard players add @a[tag=id,tag=turn] conversions 1
playsound minecraft:entity.mooshroom.convert master @a[tag=id] ~ ~ ~ 10 1 1
