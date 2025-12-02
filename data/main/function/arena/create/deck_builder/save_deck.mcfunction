## Executed as a player, and loads in the player's deck

# Copies deck and deck storage from player's inventory
#loot replace entity @s enderchest.0 mine ~23 ~4 ~14

#loot replace entity @s enderchest.1 mine ~21 ~3 ~21


tellraw @s {"translate":"deck.save"}
tag @s remove new_pack

tag @s remove pack.open.1
tag @s remove pack.open.2
tag @s remove pack.open.3
tag @s remove pack.open.4
tag @s remove pack.open.5
tag @s remove pack.open.6
tag @s remove pack.open.7
tag @s remove pack.open.8
tag @s remove pack.open.9
tag @s remove pack.open.10
tag @s remove pack.open.11
tag @s remove pack.open.12
tag @s remove pack.open.13
tag @s remove pack.open.14
tag @s remove pack.open.15
tag @s remove pack.open.16
tag @s remove pack.open.17
tag @s remove pack.open.18
tag @s remove pack.open.19
tag @s remove pack.open.20
