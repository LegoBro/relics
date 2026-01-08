## Librarian is given an emerald
execute store result score #rand var run random value 0..3
execute if score #rand var matches 0 as @p[tag=id,tag=turn] run function cards:consumable/buff/aqua_affinity/discover
execute if score #rand var matches 1 as @p[tag=id,tag=turn] run function cards:consumable/buff/curse_of_binding/discover
execute if score #rand var matches 2 as @p[tag=id,tag=turn] run function cards:consumable/buff/piercing/discover
execute if score #rand var matches 3 as @p[tag=id,tag=turn] run function cards:consumable/buff/sharpness/discover

scoreboard players add @s attack 1