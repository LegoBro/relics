## Sorted view of cards
execute store result score #rand var run random value 0..33

execute if score #rand var matches 0..4 run function cards:consumable/buff/rotten_flesh/unlock
execute if score #rand var matches 5..7 run function cards:consumable/buff/goat_horn/unlock
execute if score #rand var matches 8..12 run function cards:consumable/buff/aqua_affinity/unlock
execute if score #rand var matches 13..16 run function cards:consumable/buff/curse_of_binding/unlock
execute if score #rand var matches 17..20 run function cards:consumable/defend/cherry_sapling/unlock
execute if score #rand var matches 21..23 run function cards:consumable/defend/suspicious_sand/unlock
execute if score #rand var matches 24..28 run function cards:entity/overworld/camel/unlock
execute if score #rand var matches 29..32 run function cards:entity/overworld/librarian/unlock
execute if score #rand var matches 33 run function cards:entity/overworld/sniffer/unlock