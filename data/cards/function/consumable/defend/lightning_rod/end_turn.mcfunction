## Copper Ages

scoreboard players add @s turnTimer 1

execute if score @s turnTimer matches 2 run fill ~1 ~ ~1 ~-1 ~ ~-1 waxed_exposed_copper
execute if score @s turnTimer matches 2 run setblock ~ ~1 ~ waxed_exposed_lightning_rod

execute if score @s turnTimer matches 4 run fill ~1 ~ ~1 ~-1 ~ ~-1 waxed_weathered_copper
execute if score @s turnTimer matches 4 run setblock ~ ~1 ~ waxed_weathered_lightning_rod

execute if score @s turnTimer matches 6 run fill ~1 ~ ~1 ~-1 ~ ~-1 waxed_oxidized_copper
execute if score @s turnTimer matches 6 run setblock ~ ~1 ~ waxed_oxidized_lightning_rod

execute if score @s turnTimer matches 8 run function cards:consumable/defend/lightning_rod/absorb