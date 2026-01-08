## Sorted view of cards
execute store result score #rand var run random value 0..82

execute if score #rand var matches 0..4 run function cards:entity/overworld/tadpole/unlock
execute if score #rand var matches 5..9 run function cards:entity/overworld/frog/unlock
execute if score #rand var matches 10..14 run function cards:entity/overworld/turtle_egg/unlock
execute if score #rand var matches 15..20 run function cards:entity/overworld/drowned/unlock
execute if score #rand var matches 21..25 run function cards:entity/overworld/dolphin/unlock
execute if score #rand var matches 26..29 run function cards:entity/overworld/squid/unlock
execute if score #rand var matches 30..34 run function cards:entity/overworld/turtle/unlock
execute if score #rand var matches 35..37 run function cards:entity/overworld/axolotl/unlock
execute if score #rand var matches 38..41 run function cards:entity/overworld/guardian/unlock
execute if score #rand var matches 42 run function cards:entity/overworld/elder_guardian/unlock
execute if score #rand var matches 43..45 run function cards:consumable/attack/thunderstorm/unlock
execute if score #rand var matches 46..50 run function cards:consumable/attack/trident/unlock
execute if score #rand var matches 51..55 run function cards:consumable/buff/aqua_affinity/unlock
execute if score #rand var matches 56..60 run function cards:consumable/buff/leather_armor/unlock
execute if score #rand var matches 61..63 run function cards:consumable/buff/frog_eggs/unlock
execute if score #rand var matches 64..67 run function cards:consumable/buff/curse_of_binding/unlock
execute if score #rand var matches 68..70 run function cards:consumable/buff/invisibility_potion/unlock
execute if score #rand var matches 71..73 run function cards:consumable/defend/suspicious_sand/unlock
execute if score #rand var matches 74..78 run function cards:consumable/defend/water/unlock
execute if score #rand var matches 79..82 run function cards:consumable/defend/well/unlock