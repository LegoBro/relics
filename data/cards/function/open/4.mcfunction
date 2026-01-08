## Sorted view of cards
execute store result score #rand var run random value 0..88


execute if score #rand var matches 0..4 run function cards:entity/nether/baby_magma_cube/unlock
execute if score #rand var matches 5..9 run function cards:entity/nether/zombified_piglin/unlock
execute if score #rand var matches 10..14 run function cards:entity/nether/piglin/unlock
execute if score #rand var matches 15..17 run function cards:entity/nether/zoglin/unlock
execute if score #rand var matches 18..21 run function cards:entity/nether/blaze/unlock
execute if score #rand var matches 22..25 run function cards:entity/nether/hoglin/unlock
execute if score #rand var matches 26..29 run function cards:entity/nether/magma_cube/unlock
execute if score #rand var matches 30..32 run function cards:entity/nether/wither_skeleton/unlock
execute if score #rand var matches 33..35 run function cards:entity/nether/piglin_brute/unlock
execute if score #rand var matches 36 run function cards:entity/nether/wither/unlock

execute if score #rand var matches 37..41 run function cards:consumable/attack/flint_and_steel/unlock
execute if score #rand var matches 42..46 run function cards:consumable/attack/blaze_strike/unlock
execute if score #rand var matches 47..50 run function cards:consumable/attack/ghast_fireball/unlock
execute if score #rand var matches 51..54 run function cards:consumable/buff/piglin_bartering/unlock
execute if score #rand var matches 55..59 run function cards:consumable/buff/rotten_flesh/unlock
execute if score #rand var matches 60..64 run function cards:consumable/buff/golden_armor/unlock
execute if score #rand var matches 65..69 run function cards:consumable/buff/splash_fire_resistance_potion/unlock
execute if score #rand var matches 70..73 run function cards:consumable/buff/spectral_arrow/unlock
execute if score #rand var matches 74..75 run function cards:consumable/buff/netherite_armor/unlock
execute if score #rand var matches 76..79 run function cards:consumable/defend/gilded_blackstone/unlock
execute if score #rand var matches 80..83 run function cards:consumable/defend/wither_trap/unlock
execute if score #rand var matches 84..88 run function cards:consumable/defend/lava_pocket/unlock
