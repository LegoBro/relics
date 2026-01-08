## Sorted view of cards
execute store result score #rand var run random value 0..34

execute if score #rand var matches 0..4 run function cards:consumable/buff/minecart/unlock
execute if score #rand var matches 5..9 run function cards:consumable/buff/sharpness/unlock
execute if score #rand var matches 10..14 run function cards:entity/overworld/frog/unlock
execute if score #rand var matches 15..19 run function cards:entity/overworld/tadpole/unlock
execute if score #rand var matches 20..23 run function cards:consumable/defend/sculk_block/unlock
execute if score #rand var matches 24..27 run function cards:entity/overworld/butcher/unlock
execute if score #rand var matches 28..30 run function cards:consumable/buff/frog_eggs/unlock
execute if score #rand var matches 31..32 run function cards:consumable/defend/sculk_catalyst/unlock
execute if score #rand var matches 33..34 run function cards:consumable/defend/sculk_shrieker/unlock