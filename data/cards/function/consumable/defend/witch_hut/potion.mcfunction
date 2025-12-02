## Generates a discovered (meaning it won't be saved) card through bartering
execute store result score #rand var run loot spawn 0 -200 0 loot cards:0_3

execute if score #rand var matches 0 run function cards:consumable/defend/witch_hut/potion_success
