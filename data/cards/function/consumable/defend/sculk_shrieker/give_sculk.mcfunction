
execute store result score #rand var run random value 0..9
execute if score #rand var matches 0..4 run function cards:consumable/defend/sculk_block/discover
execute if score #rand var matches 5..8 run function cards:consumable/defend/sculk_sensor/discover
execute if score #rand var matches 9 run function cards:consumable/defend/sculk_catalyst/discover