## Update from a store, keeping it on the same menu
execute if score @s menu matches 0.. run function main:deck_builder/card_manager/update/collection
execute if score @s menu matches ..-1 run function main:deck_builder/card_manager/update/decks
playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 1