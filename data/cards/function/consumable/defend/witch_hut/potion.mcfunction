## Generates a discovered (meaning it won't be saved) card through bartering
execute store result score #rand var run random value 0..3

execute if score #rand var matches 0 run function cards:consumable/defend/witch_hut/potion_success
