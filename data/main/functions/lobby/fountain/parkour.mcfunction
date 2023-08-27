## Parkour fountain
scoreboard players add #fountain var 1
execute unless entity @a[distance=..0.5] run particle splash ~ ~ ~ 0 0 0 1 50 force @a[distance=..7]
execute unless entity @a[distance=..0.5] run scoreboard players set #fountain var 0
execute as @a[distance=..0.5] if score #fountain var matches 30 run function main:lobby/fountain/launch
execute unless entity @a[distance=..0.5] run playsound minecraft:entity.generic.swim master @a[distance=..7] ~ ~ ~ 0.05 0.5 0
