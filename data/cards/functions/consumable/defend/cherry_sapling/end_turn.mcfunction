# hit with arrows
scoreboard players add @s turnTimer 1
execute if score @s turnTimer matches 8 run fill ~1 ~1 ~1 ~-1 ~1 ~-1 cherry_leaves
execute if score @s turnTimer matches 8 run fill ~ ~2 ~1 ~ ~2 ~-1 cherry_leaves
execute if score @s turnTimer matches 8 run fill ~1 ~2 ~ ~-1 ~2 ~ cherry_leaves
execute if score @s turnTimer matches 8 run fill ~ ~ ~ ~ ~1 ~ cherry_wood
execute if score @s turnTimer matches 8 run playsound block.wood.place master @a[tag=id] ~ ~ ~ 1 1 1
execute if score @s turnTimer matches 9.. run function cards:consumable/defend/cherry_sapling/heal
