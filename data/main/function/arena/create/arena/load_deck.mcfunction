## Executed as a player, and loads in the player's deck

# removes all existing items
data merge block ~ ~-2 ~ {Items:[]}

# Copies deck and deck storage from player's inventory

# Pick the players deck out of all their decks
execute if score @s deck matches -1 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[0].item.components."minecraft:container"
execute if score @s deck matches -2 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[1].item.components."minecraft:container"
execute if score @s deck matches -3 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[2].item.components."minecraft:container"
execute if score @s deck matches -4 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[3].item.components."minecraft:container"
execute if score @s deck matches -5 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[4].item.components."minecraft:container"
execute if score @s deck matches -6 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[5].item.components."minecraft:container"
execute if score @s deck matches -7 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[6].item.components."minecraft:container"
execute if score @s deck matches -8 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[7].item.components."minecraft:container"
execute if score @s deck matches -9 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[8].item.components."minecraft:container"

function helper:convert_container_data

data modify block ~ ~-2 ~ Items set from storage helper:container items
