# hit with arrows
scoreboard players add @s turnTimer 1

scoreboard players operation #turnTimerLoop var = @s turnTimer
scoreboard players operation #turnTimerLoop var %= #16 var

scoreboard players operation #turnTimer var = @s turnTimer
scoreboard players operation #turnTimer var %= #4 var

execute if score #turnTimer var matches 0 run function cards:consumable/defend/vault/next_block
execute if score #turnTimer var matches 1 positioned ~-1 ~ ~ run function cards:consumable/defend/vault/place_bulb
execute if score #turnTimer var matches 2 positioned ~ ~ ~1 run function cards:consumable/defend/vault/place_bulb
execute if score #turnTimer var matches 3 positioned ~ ~ ~-1 run function cards:consumable/defend/vault/place_bulb


