## Discovers one of any enchantment

execute store result score #rand_ench var run random value 0..6
execute if score #rand_ench var matches 0 run function cards:consumable/buff/aqua_affinity/discover
execute if score #rand_ench var matches 1 run function cards:consumable/buff/curse_of_binding/discover
execute if score #rand_ench var matches 2 run function cards:consumable/buff/flame_aspect/discover
execute if score #rand_ench var matches 3 run function cards:consumable/buff/lunge/discover
execute if score #rand_ench var matches 4 run function cards:consumable/buff/piercing/discover
execute if score #rand_ench var matches 5 run function cards:consumable/buff/sharpness/discover
execute if score #rand_ench var matches 6 run function cards:consumable/buff/looting/discover