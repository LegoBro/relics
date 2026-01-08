## Sorted view of cards
execute store result score #rand var run random value 0..54



execute if score #rand var matches 0..4 run function cards:entity/end/endermite/unlock
execute if score #rand var matches 5..7 run function cards:entity/end/end_crystal/unlock
execute if score #rand var matches 8..12 run function cards:entity/end/enderman/unlock
execute if score #rand var matches 13..15 run function cards:entity/end/shulker/unlock
execute if score #rand var matches 16..19 run function cards:entity/end/phantom/unlock
execute if score #rand var matches 20 run function cards:entity/end/ender_dragon/unlock
execute if score #rand var matches 21..25 run function cards:consumable/attack/chorus_fruit/unlock
execute if score #rand var matches 26..30 run function cards:consumable/attack/dragons_breath/unlock
execute if score #rand var matches 31..35 run function cards:consumable/attack/ender_pearl/unlock

execute if score #rand var matches 36..39 run function cards:consumable/buff/iron_armor/unlock
execute if score #rand var matches 40..42 run function cards:consumable/buff/diamond_armor/unlock
execute if score #rand var matches 43..44 run function cards:consumable/buff/elytra/unlock
execute if score #rand var matches 45..49 run function cards:consumable/defend/cobblestone/unlock
execute if score #rand var matches 50..54 run function cards:consumable/defend/targets/unlock