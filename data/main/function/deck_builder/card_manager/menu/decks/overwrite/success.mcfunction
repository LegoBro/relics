# Clear import book
clear @s writable_book
item replace block 0 0 0 container.0 from entity @s enderchest.0
function helper:deck/clone/inventory_to_shulker
function helper:deck/clone/shulker_to_data

execute if score @s menu matches -1 run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.decks[0] set from storage helper:deck deck
execute if score @s menu matches -2 run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.decks[1] set from storage helper:deck deck
execute if score @s menu matches -3 run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.decks[2] set from storage helper:deck deck
execute if score @s menu matches -4 run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.decks[3] set from storage helper:deck deck
execute if score @s menu matches -5 run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.decks[4] set from storage helper:deck deck
execute if score @s menu matches -6 run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.decks[5] set from storage helper:deck deck
execute if score @s menu matches -7 run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.decks[6] set from storage helper:deck deck
execute if score @s menu matches -8 run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.decks[7] set from storage helper:deck deck
execute if score @s menu matches -9 run data modify block 0 0 0 Items[0].components."minecraft:custom_data".Save.decks[8] set from storage helper:deck deck
item replace entity @s enderchest.0 from block 0 0 0 container.0

function helper:deck/clone/data_to_selected



data merge block 0 0 1 {Items:[]}

playsound minecraft:entity.villager.work_cartographer master @s ~ ~ ~ 1 1.5