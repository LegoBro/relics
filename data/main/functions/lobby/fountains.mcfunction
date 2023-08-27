## So pretty, very nice
execute positioned 8 198.5 24 run particle splash ~ ~4.65 ~ 0 0 0 1 50 force @a[distance=..7]
execute positioned 8 198.5 24 run playsound minecraft:entity.generic.swim master @a[distance=..7] ~ ~ ~ 0.05 0.5 0
execute positioned 20 198.5 8 run particle splash ~ ~4.65 ~ 0 0 0 1 50 force @a[distance=..7]
execute positioned 20 198.5 8 run playsound minecraft:entity.generic.swim master @a[distance=..7] ~ ~ ~ 0.05 0.5 0
execute positioned 8 198.5 -8 run particle splash ~ ~5.65 ~ 0 0 0 1 50 force @a[distance=..7]
execute positioned 8 198.5 -8 run playsound minecraft:entity.generic.swim master @a[distance=..7] ~ ~ ~ 0.05 0.5 0
execute positioned -4 202.15 8 run function main:lobby/fountain/parkour
