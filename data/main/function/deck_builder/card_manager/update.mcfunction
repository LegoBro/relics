## Updates card manager
item replace block ~1 ~ ~ container.18 with iron_ingot[item_name={"translate":"collection","color":"gray","italic":false}]

item replace block ~1 ~ ~ container.26 with shulker_box[item_name={"translate":"decks","color":"gray","italic":false}] 1

# Safety mechanism - copies real cards back into collection if found in chest

execute store result score #test var run data modify block 0 0 1 Items[] set from block ~ ~ ~ Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{gui:False}}}]
execute if score #test var matches 1.. as @p[tag=id] run function main:deck_builder/card_manager/menu/collection/store

execute store result score #test var run data modify block 0 0 1 Items[] set from block ~1 ~ ~ Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{gui:False}}}]
execute if score #test var matches 1.. as @p[tag=id] run function main:deck_builder/card_manager/menu/collection/store
