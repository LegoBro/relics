## Go up
execute as @a[distance=..0.5] at @s if block ~ ~-1 ~ end_rod run effect give @s minecraft:levitation 1 10
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.05 25 force
playsound minecraft:block.bubble_column.upwards_inside master @a ~ ~ ~ 1 2 0
