## Generates a discovered (meaning it won't be saved) card through bartering
execute store result score #rand var run random value 0..5

execute if score #rand var matches 0 run function cards:consumable/attack/blaze_strike/discover
execute if score #rand var matches 1 run function cards:consumable/attack/ghast_fireball/discover
execute if score #rand var matches 2 run function cards:consumable/buff/spectral_arrow/discover
execute if score #rand var matches 3 run function cards:consumable/buff/splash_fire_resistance_potion/discover
execute if score #rand var matches 4 run function cards:consumable/defend/lava_pocket/discover
execute if score #rand var matches 5 run function cards:consumable/buff/leather_armor/discover
