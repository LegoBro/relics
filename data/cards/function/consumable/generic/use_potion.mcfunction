## Whenever a potion is used

execute if entity @n[type=armor_stand,tag=witch_hut,tag=id,distance=..100] run function cards:consumable/defend/witch_hut/detect
scoreboard players add @s play.potion 1