## Sorted view of cards
execute store result score #rand var run loot spawn 0 -200 0 loot cards:open/1
execute if score #rand var matches 1..5 run function cards:consumable/attack/chorus_fruit/unlock
execute if score #rand var matches 6..10 run function cards:consumable/attack/iron_pickaxe/unlock
execute if score #rand var matches 11..15 run function cards:consumable/attack/arrow_storm/unlock
execute if score #rand var matches 16..20 run function cards:consumable/attack/flint_and_steel/unlock
execute if score #rand var matches 21..25 run function cards:consumable/attack/piston/unlock
execute if score #rand var matches 26..30 run function cards:consumable/attack/anvil/unlock
execute if score #rand var matches 31..35 run function cards:consumable/attack/blaze_strike/unlock
execute if score #rand var matches 36..40 run function cards:consumable/attack/splash_healing_potion/unlock
execute if score #rand var matches 41..44 run function cards:consumable/attack/sticky_piston/unlock
execute if score #rand var matches 45..48 run function cards:consumable/attack/splash_poison_potion/unlock
execute if score #rand var matches 49..53 run function cards:consumable/attack/splash_damage_potion/unlock
execute if score #rand var matches 54..57 run function cards:consumable/attack/ghast_fireball/unlock
execute if score #rand var matches 58..62 run function cards:consumable/attack/dragons_breath/unlock
execute if score #rand var matches 63..67 run function cards:consumable/attack/ender_pearl/unlock
execute if score #rand var matches 68..70 run function cards:consumable/attack/thunderstorm/unlock
execute if score #rand var matches 71..72 run function cards:consumable/attack/tnt_cannon/unlock
execute if score #rand var matches 73..75 run function cards:consumable/attack/ice_storm/unlock
execute if score #rand var matches 76..80 run function cards:consumable/attack/trident/unlock