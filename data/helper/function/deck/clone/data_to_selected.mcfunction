## Data from the player's ender chest item
item replace block 0 0 0 container.0 from entity @s enderchest.0
data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.selected_deck set from storage helper:deck deck
item replace entity @s enderchest.0 from block 0 0 0 container.0
data merge block 0 0 0 {Items:[]}