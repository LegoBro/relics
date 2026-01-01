## Sorted view of cards
execute store result score #rand var run loot spawn 0 -200 0 loot cards:open/2
execute if score #rand var matches 1..5 run function cards:consumable/defend/cobblestone/unlock
execute if score #rand var matches 6..9 run function cards:consumable/defend/sculk_block/unlock
execute if score #rand var matches 10..14 run function cards:consumable/defend/cobweb_trap/unlock
execute if score #rand var matches 15..18 run function cards:consumable/defend/gilded_blackstone/unlock
execute if score #rand var matches 19..22 run function cards:consumable/defend/wither_trap/unlock
execute if score #rand var matches 23..27 run function cards:consumable/defend/lava_pocket/unlock
execute if score #rand var matches 28..30 run function cards:consumable/defend/suspicious_sand/unlock
execute if score #rand var matches 31..35 run function cards:consumable/defend/hay_bale/unlock
execute if score #rand var matches 36..40 run function cards:consumable/defend/water/unlock
execute if score #rand var matches 41..45 run function cards:consumable/defend/bee_nest/unlock
execute if score #rand var matches 46..49 run function cards:consumable/defend/lightning_rod/unlock
execute if score #rand var matches 50..52 run function cards:consumable/defend/spawner/unlock
execute if score #rand var matches 53..54 run function cards:consumable/defend/sculk_shrieker/unlock
execute if score #rand var matches 55..58 run function cards:consumable/defend/bee_hive/unlock
execute if score #rand var matches 59..63 run function cards:consumable/defend/diorite/unlock
execute if score #rand var matches 64..68 run function cards:consumable/defend/outpost/unlock
execute if score #rand var matches 69..73 run function cards:consumable/defend/targets/unlock
execute if score #rand var matches 74..77 run function cards:consumable/defend/cherry_sapling/unlock
execute if score #rand var matches 78..82 run function cards:consumable/defend/farmland/unlock
execute if score #rand var matches 83..86 run function cards:consumable/defend/well/unlock
execute if score #rand var matches 87..89 run function cards:consumable/defend/witch_hut/unlock
execute if score #rand var matches 90..92 run function cards:consumable/defend/jail/unlock
execute if score #rand var matches 93..94 run function cards:consumable/defend/sculk_catalyst/unlock
execute if score #rand var matches 95..96 run function cards:consumable/defend/skeleton_trap/unlock