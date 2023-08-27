## Sorted view of cards
execute store result score #rand var run loot spawn 0 -200 0 loot cards:open/8

execute if score #rand var matches 0..4 run function cards:consumable/attack/piston/unlock
execute if score #rand var matches 5..9 run function cards:consumable/attack/splash_damage_potion/unlock
execute if score #rand var matches 10..14 run function cards:consumable/attack/splash_healing_potion/unlock
execute if score #rand var matches 15..18 run function cards:consumable/attack/piston/unlock
execute if score #rand var matches 19..22 run function cards:consumable/buff/honeycomb/unlock
execute if score #rand var matches 23..26 run function cards:consumable/defend/lightning_rod/unlock
execute if score #rand var matches 27..29 run function cards:entity/overworld/axolotl/unlock
execute if score #rand var matches 30..33 run function cards:entity/overworld/fletcher/unlock
execute if score #rand var matches 34..37 run function cards:entity/overworld/goat/unlock