execute store result score #test var run clear @s *[custom_data~{card:{}}] 0
execute if score #test var matches 27 run function main:deck_builder/card_manager/menu/decks/overwrite/success
execute unless score #test var matches 27 run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 0
function main:deck_builder/card_manager/update/decks
