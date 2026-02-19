
## Does the player even have a GUI item?
#execute store result score #gui var run clear @s *[custom_data~{gui:True}] 0
#execute unless score #gui var matches 1.. run return 0

## Selects a card from the GUI, currently just resets UI
execute store result score #card var run clear @s carrot_on_a_stick[custom_data~{gui:True}]
execute if score #card var matches 1.. run return run function main:deck_builder/card_manager/update/decks

## Selects a deck again, currently just resets UI
execute store result score #old_grab var run clear @s *[custom_data~{gui:True,grab:True}]
execute if score #old_grab var matches 1.. run return run function main:deck_builder/card_manager/update/decks

## Selects Overwrite
execute store result score #overwrite var run clear @s feather
execute if score #overwrite var matches 1.. run return run function main:deck_builder/card_manager/menu/decks/overwrite

# Deck Grabbing, uses currently selected deck
execute store result score #grab var run clear @s leather[custom_data~{gui:True,select:True}]
execute if score #grab var matches 1.. run return run function main:deck_builder/card_manager/menu/decks/grab

# Deck Viewing 
execute store result score #deck_1 var run clear @s white_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_2 var run clear @s red_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_3 var run clear @s orange_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_4 var run clear @s yellow_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_5 var run clear @s green_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_6 var run clear @s cyan_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_7 var run clear @s blue_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_8 var run clear @s purple_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_9 var run clear @s black_stained_glass[custom_data~{gui:True,deck:True}]

scoreboard players reset #deck
execute if score #deck_1 var matches 1.. run scoreboard players set #deck var -1
execute if score #deck_2 var matches 1.. run scoreboard players set #deck var -2
execute if score #deck_3 var matches 1.. run scoreboard players set #deck var -3
execute if score #deck_4 var matches 1.. run scoreboard players set #deck var -4
execute if score #deck_5 var matches 1.. run scoreboard players set #deck var -5
execute if score #deck_6 var matches 1.. run scoreboard players set #deck var -6
execute if score #deck_7 var matches 1.. run scoreboard players set #deck var -7
execute if score #deck_8 var matches 1.. run scoreboard players set #deck var -8
execute if score #deck_9 var matches 1.. run scoreboard players set #deck var -9
execute if score #deck var matches ..-1 run return run function main:deck_builder/card_manager/menu/decks/deck

## Fast Select
execute store result score #select_fast_open var run clear @s tipped_arrow[custom_data~{gui:True,fast_open:True}]
execute if score #select_fast_open var matches 1.. run return run function main:deck_builder/toggle_fast_open
execute store result score #select_fast_open var run clear @s spectral_arrow[custom_data~{gui:True,fast_open:True}]
execute if score #select_fast_open var matches 1.. run return run function main:deck_builder/toggle_fast_open
