execute unless score @s turnTimer matches 4.. run return run tag @a[tag=id,tag=loot_receiver] remove loot_receiver
## first stored card
execute store result score #rand var run random value 0..2
execute if score #rand var matches 0 as @p[tag=id,tag=loot_receiver] run function cards:consumable/buff/golden_apple/discover
execute if score #rand var matches 1 as @p[tag=id,tag=loot_receiver] run function cards:consumable/buff/iron_armor/discover
execute if score #rand var matches 2 as @p[tag=id,tag=loot_receiver] run function cards:consumable/attack/wind_charge/discover

## Next
execute unless score @s turnTimer matches 8.. run return run tag @a[tag=id,tag=loot_receiver] remove loot_receiver
execute store result score #rand var run random value 0..1
execute if score #rand var matches 0 as @p[tag=id,tag=loot_receiver] run function cards:consumable/buff/golden_carrot/discover
execute if score #rand var matches 1 as @p[tag=id,tag=loot_receiver] run function cards:consumable/generic/discover_enchantment

## Next
execute unless score @s turnTimer matches 12.. run return run tag @a[tag=id,tag=loot_receiver] remove loot_receiver
execute store result score #rand var run random value 0..1
execute if score #rand var matches 0 as @p[tag=id,tag=loot_receiver] run function cards:consumable/attack/trident/discover
execute if score #rand var matches 1 as @p[tag=id,tag=loot_receiver] run function cards:consumable/buff/diamond_armor/discover

## Next (and final)
execute unless score @s turnTimer matches 16.. run return run tag @a[tag=id,tag=loot_receiver] remove loot_receiver
execute store result score #rand var run random value 0..1
execute if score #rand var matches 0 as @p[tag=id,tag=loot_receiver] run function cards:consumable/buff/enchanted_golden_apple/discover
execute if score #rand var matches 1 as @p[tag=id,tag=loot_receiver] run function cards:consumable/attack/mace/discover

execute if score @s turnTimer matches 16.. run scoreboard players remove @s turnTimer 16
function cards:consumable/defend/vault/loot_loop