## Sorted view of cards
execute store result score #rand var run random value 0..93

execute if score #rand var matches 0..4 run function cards:entity/overworld/zombie_villager/unlock
execute if score #rand var matches 5..8 run function cards:entity/overworld/fletcher/unlock
execute if score #rand var matches 9..13 run function cards:entity/overworld/pillager/unlock
execute if score #rand var matches 14..16 run function cards:entity/overworld/wandering_trader/unlock
execute if score #rand var matches 17..20 run function cards:entity/overworld/iron_golem/unlock
execute if score #rand var matches 21..24 run function cards:entity/overworld/librarian/unlock
execute if score #rand var matches 25..28 run function cards:entity/overworld/butcher/unlock
execute if score #rand var matches 29..31 run function cards:entity/overworld/armorsmith/unlock
execute if score #rand var matches 32..34 run function cards:entity/overworld/vindicator/unlock
execute if score #rand var matches 35..37 run function cards:entity/overworld/ravager/unlock
execute if score #rand var matches 38..41 run function cards:entity/overworld/witch/unlock
execute if score #rand var matches 42..44 run function cards:entity/overworld/cleric/unlock
execute if score #rand var matches 45..46 run function cards:entity/overworld/evoker/unlock

execute if score #rand var matches 47..51 run function cards:consumable/attack/anvil/unlock
execute if score #rand var matches 52..56 run function cards:consumable/attack/splash_healing_potion/unlock
execute if score #rand var matches 57..61 run function cards:consumable/buff/bread/unlock
execute if score #rand var matches 62..66 run function cards:consumable/buff/golden_apple/unlock
execute if score #rand var matches 67..71 run function cards:consumable/buff/emerald/unlock
execute if score #rand var matches 72..74 run function cards:consumable/buff/goat_horn/unlock
execute if score #rand var matches 75..76 run function cards:consumable/buff/name_tag/unlock
execute if score #rand var matches 77..81 run function cards:consumable/defend/outpost/unlock
execute if score #rand var matches 82..86 run function cards:consumable/defend/farmland/unlock
execute if score #rand var matches 87..89 run function cards:consumable/defend/witch_hut/unlock
execute if score #rand var matches 90..93 run function cards:consumable/defend/jail/unlock