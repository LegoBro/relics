## give player saturation

execute store result score #rand var run random value 0..4

execute if score #rand var matches 0 if entity @s[team=green] as @p[tag=id,tag=turn] run function cards:consumable/buff/bread/discover
execute if score #rand var matches 1 if entity @s[team=green,tag=brown] as @p[tag=id,tag=turn] run function cards:consumable/buff/golden_carrot/discover
