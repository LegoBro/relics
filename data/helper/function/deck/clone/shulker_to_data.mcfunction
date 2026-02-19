## Converts deck at 0 0 1 to a string for export
# Reset data
data merge storage helper:deck {deck:[]}
## Copy IDs, could be a macro, but not really necessary
data modify storage helper:deck deck append from block 0 0 1 Items[0].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[1].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[2].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[3].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[4].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[5].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[6].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[7].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[8].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[9].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[10].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[11].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[12].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[13].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[14].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[15].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[16].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[17].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[18].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[19].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[20].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[21].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[22].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[23].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[24].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[25].components."minecraft:custom_data".card.id
data modify storage helper:deck deck append from block 0 0 1 Items[26].components."minecraft:custom_data".card.id

execute store result score #deck.data_size var run data get storage helper:deck deck
## Output if the deck size is valid
execute if score #deck.data_size var matches 27 run return 1
return fail