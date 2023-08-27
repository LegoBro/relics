## Executed as a player, and loads in the player's deck

# removes all existing items
data merge block ~ ~-2 ~ {Items:[]}

# Copies deck and deck storage from player's inventory

# Pick the players deck out of all their decks
execute if score @s deck matches -1 run data modify block ~ ~-2 ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[0].tag.BlockEntityTag.Items
execute if score @s deck matches -2 run data modify block ~ ~-2 ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[1].tag.BlockEntityTag.Items
execute if score @s deck matches -3 run data modify block ~ ~-2 ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[2].tag.BlockEntityTag.Items
execute if score @s deck matches -4 run data modify block ~ ~-2 ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[3].tag.BlockEntityTag.Items
execute if score @s deck matches -5 run data modify block ~ ~-2 ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[4].tag.BlockEntityTag.Items
execute if score @s deck matches -6 run data modify block ~ ~-2 ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[5].tag.BlockEntityTag.Items
execute if score @s deck matches -7 run data modify block ~ ~-2 ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[6].tag.BlockEntityTag.Items
execute if score @s deck matches -8 run data modify block ~ ~-2 ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[7].tag.BlockEntityTag.Items
execute if score @s deck matches -9 run data modify block ~ ~-2 ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[8].tag.BlockEntityTag.Items
#say deck loaded
