## Keeps looping through to keep drawing cards
execute if score #count var matches 1.. run function cards:consumable/buff/piglin_bartering/barter
scoreboard players remove #count var 1

execute if score #count var matches 1.. run function cards:consumable/buff/piglin_bartering/loop
