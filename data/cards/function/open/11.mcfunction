## Sorted view of cards
execute store result score #rand var run random value 0..66

execute if score #rand var matches 0..4 run function cards:entity/overworld/copper_golem/unlock
execute if score #rand var matches 5..6 run function cards:entity/overworld/parched/unlock
execute if score #rand var matches 7..11 run function cards:entity/overworld/bogged/unlock
execute if score #rand var matches 12..16 run function cards:entity/overworld/farmer/unlock
execute if score #rand var matches 17..20 run function cards:entity/nether/strider/unlock
execute if score #rand var matches 21..23 run function cards:entity/overworld/camel_husk/unlock
execute if score #rand var matches 24 run function cards:consumable/attack/mace/unlock
execute if score #rand var matches 25..28 run function cards:consumable/attack/critical_hit/unlock
execute if score #rand var matches 29..32 run function cards:consumable/attack/wind_charge/unlock

execute if score #rand var matches 33..36 run function cards:consumable/buff/saddle/unlock
execute if score #rand var matches 37..41 run function cards:consumable/buff/iron_spear/unlock
execute if score #rand var matches 42..46 run function cards:consumable/buff/iron_sword/unlock
execute if score #rand var matches 47..48 run function cards:consumable/buff/lunge/unlock
execute if score #rand var matches 49..53 run function cards:consumable/buff/repeater/unlock
execute if score #rand var matches 54..57 run function cards:consumable/buff/flame_aspect/unlock
execute if score #rand var matches 58..60 run function cards:consumable/buff/looting/unlock
execute if score #rand var matches 61..63 run function cards:consumable/defend/enchantment_table/unlock
execute if score #rand var matches 64..66 run function cards:consumable/defend/vault/unlock
