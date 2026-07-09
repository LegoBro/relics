## Sets player's selected_deck back to their decks

tag @s remove selected_draft_reset

execute if score @s deck matches -1 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[0]
execute if score @s deck matches -2 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[1]
execute if score @s deck matches -3 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[2]
execute if score @s deck matches -4 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[3]
execute if score @s deck matches -5 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[4]
execute if score @s deck matches -6 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[5]
execute if score @s deck matches -7 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[6]
execute if score @s deck matches -8 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[7]
execute if score @s deck matches -9 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[8]

function helper:deck/clone/data_to_selected