## Ticks as player, and handles card manager

# Always at bottom
execute store result score #decks var run clear @s shulker_box

execute store result score #collect var run clear @s iron_ingot

execute if score #decks var matches 1.. run function main:deck_builder/card_manager/decks

execute if score #collect var matches 1.. run function main:deck_builder/card_manager/collection

# Dictionary for other things:
execute if score @s menu matches -16..-1 run function main:deck_builder/card_manager/menu/decks
execute if score @s menu matches 0.. run function main:deck_builder/card_manager/menu/collection

# Search for AH stuff
function main:deck_builder/arena_hero/player