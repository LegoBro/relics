## give player saturation

execute store result score #rand var run loot spawn 0 -200 0 loot cards:0_4

execute if score #rand var matches 0 if entity @s[team=green] as @p[tag=id,tag=turn] run function cards:consumable/buff/bread/discover
execute if score #rand var matches 1 if entity @s[team=green,tag=brown] as @p[tag=id,tag=turn] run function cards:consumable/buff/golden_carrot/discover
