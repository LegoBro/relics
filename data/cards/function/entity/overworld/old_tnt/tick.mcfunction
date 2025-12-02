## Ticks the TNT before it explodes
scoreboard players add @s tnt 1
execute if score @s tnt matches 5.. run function cards:consumable/attack/tnt/explode
