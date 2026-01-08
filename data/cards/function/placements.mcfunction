## List of placements

execute store result score #placement var run data get entity @s SelectedItem.components."minecraft:custom_data".card.placement
execute if score #placement var matches 0 run function cards:placements/anywhere
execute if score #placement var matches 1 run function cards:placements/anywhere_blocked
execute if score #placement var matches 2 run function cards:placements/anywhere_unfilled
execute if score #placement var matches 3 run function cards:placements/anywhere_filled
execute if score #placement var matches 4 run function cards:placements/anywhere_entity
execute if score #placement var matches 5 run function cards:placements/anywhere_friendly
execute if score #placement var matches 6 run function cards:placements/anywhere_friendly_moved
execute if score #placement var matches 7 run function cards:placements/anywhere_friendly_ranged
execute if score #placement var matches 8 run function cards:placements/anywhere_friendly_not_ranged
execute if score #placement var matches 9 run function cards:placements/anywhere_piglin
execute if score #placement var matches 10 run function cards:placements/front
execute if score #placement var matches 11 run function cards:placements/middle_unfilled
execute if score #placement var matches 12 run function cards:placements/emerald
execute if score #placement var matches 13 run function cards:placements/not_enemy_filled
execute if score #placement var matches 14 run function cards:placements/not_own_filled
execute if score #placement var matches 15 run function cards:placements/minecart
execute if score #placement var matches 16 run function cards:placements/undead
execute if score #placement var matches 17 run function cards:placements/not_aquatic