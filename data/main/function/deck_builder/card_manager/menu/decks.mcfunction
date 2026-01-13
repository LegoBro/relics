
execute store result score #card var run clear @s carrot_on_a_stick[custom_data~{gui:True}]
execute store result score #overwrite var run clear @s feather
execute store result score #deck_1 var run clear @s white_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_2 var run clear @s red_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_3 var run clear @s orange_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_4 var run clear @s yellow_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_5 var run clear @s green_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_6 var run clear @s cyan_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_7 var run clear @s blue_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_8 var run clear @s purple_stained_glass[custom_data~{gui:True,deck:True}]
execute store result score #deck_9 var run clear @s black_stained_glass[custom_data~{gui:True,deck:True}]

execute store result score #deck_1_grab var run clear @s white_shulker_box[custom_data~{gui:True,grab:True}]
execute store result score #deck_2_grab var run clear @s red_shulker_box[custom_data~{gui:True,grab:True}]
execute store result score #deck_3_grab var run clear @s orange_shulker_box[custom_data~{gui:True,grab:True}]
execute store result score #deck_4_grab var run clear @s yellow_shulker_box[custom_data~{gui:True,grab:True}]
execute store result score #deck_5_grab var run clear @s green_shulker_box[custom_data~{gui:True,grab:True}]
execute store result score #deck_6_grab var run clear @s cyan_shulker_box[custom_data~{gui:True,grab:True}]
execute store result score #deck_7_grab var run clear @s blue_shulker_box[custom_data~{gui:True,grab:True}]
execute store result score #deck_8_grab var run clear @s purple_shulker_box[custom_data~{gui:True,grab:True}]
execute store result score #deck_9_grab var run clear @s black_shulker_box[custom_data~{gui:True,grab:True}]

execute store result score #select_1 var run clear @s white_shulker_box[custom_data~{gui:True,select:True}]
execute store result score #select_2 var run clear @s red_shulker_box[custom_data~{gui:True,select:True}]
execute store result score #select_3 var run clear @s orange_shulker_box[custom_data~{gui:True,select:True}]
execute store result score #select_4 var run clear @s yellow_shulker_box[custom_data~{gui:True,select:True}]
execute store result score #select_5 var run clear @s green_shulker_box[custom_data~{gui:True,select:True}]
execute store result score #select_6 var run clear @s cyan_shulker_box[custom_data~{gui:True,select:True}]
execute store result score #select_7 var run clear @s blue_shulker_box[custom_data~{gui:True,select:True}]
execute store result score #select_8 var run clear @s purple_shulker_box[custom_data~{gui:True,select:True}]
execute store result score #select_9 var run clear @s black_shulker_box[custom_data~{gui:True,select:True}]

execute if score #card var matches 1.. run function main:deck_builder/card_manager/update/decks

# Overwrite Selection
execute if score #overwrite var matches 1.. run function main:deck_builder/card_manager/menu/decks/overwrite

## Fast Select
execute store result score #select_fast_open var run clear @s tipped_arrow[custom_data~{gui:True,fast_open:True}]
execute if score #select_fast_open var matches 1.. run function main:deck_builder/toggle_fast_open
execute store result score #select_fast_open var run clear @s spectral_arrow[custom_data~{gui:True,fast_open:True}]
execute if score #select_fast_open var matches 1.. run function main:deck_builder/toggle_fast_open

# Deck Viewing
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
execute if score #deck var matches ..-1 run function main:deck_builder/card_manager/menu/decks/deck

# Deck Grabbing
scoreboard players reset #deck_grab
execute if score #deck_1_grab var matches 1.. run scoreboard players set #deck_grab var 1
execute if score #deck_2_grab var matches 1.. run scoreboard players set #deck_grab var 1
execute if score #deck_3_grab var matches 1.. run scoreboard players set #deck_grab var 1
execute if score #deck_4_grab var matches 1.. run scoreboard players set #deck_grab var 1
execute if score #deck_5_grab var matches 1.. run scoreboard players set #deck_grab var 1
execute if score #deck_6_grab var matches 1.. run scoreboard players set #deck_grab var 1
execute if score #deck_7_grab var matches 1.. run scoreboard players set #deck_grab var 1
execute if score #deck_8_grab var matches 1.. run scoreboard players set #deck_grab var 1
execute if score #deck_9_grab var matches 1.. run scoreboard players set #deck_grab var 1
execute if score #deck_grab var matches 1.. run function main:deck_builder/card_manager/menu/decks/grab

execute if score #select_1 var matches 1.. run function main:deck_builder/card_manager/menu/decks/select
execute if score #select_2 var matches 1.. run function main:deck_builder/card_manager/menu/decks/select
execute if score #select_3 var matches 1.. run function main:deck_builder/card_manager/menu/decks/select
execute if score #select_4 var matches 1.. run function main:deck_builder/card_manager/menu/decks/select
execute if score #select_5 var matches 1.. run function main:deck_builder/card_manager/menu/decks/select
execute if score #select_6 var matches 1.. run function main:deck_builder/card_manager/menu/decks/select
execute if score #select_7 var matches 1.. run function main:deck_builder/card_manager/menu/decks/select
execute if score #select_8 var matches 1.. run function main:deck_builder/card_manager/menu/decks/select
execute if score #select_9 var matches 1.. run function main:deck_builder/card_manager/menu/decks/select