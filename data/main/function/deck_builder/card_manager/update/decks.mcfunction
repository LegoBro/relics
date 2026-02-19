execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data merge block ~ ~ ~ {Items:[]}
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data merge block ~1 ~ ~ {Items:[]}

# Display a deck

execute if score @s menu matches -1 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[0]
execute if score @s menu matches -2 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[1]
execute if score @s menu matches -3 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[2]
execute if score @s menu matches -4 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[3]
execute if score @s menu matches -5 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[4]
execute if score @s menu matches -6 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[5]
execute if score @s menu matches -7 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[6]
execute if score @s menu matches -8 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[7]
execute if score @s menu matches -9 run data modify storage helper:deck deck set from entity @s EnderItems[0].components."minecraft:custom_data".Save.decks[8]

execute store result score #deck_verify var run data get storage helper:deck deck
execute unless score #deck_verify var matches 27 run function helper:deck/clone/default_to_data
function helper:deck/clone/data_to_selected
function helper:deck/clone/data_to_shulker
function helper:deck/clone/shulker_convert_gui



execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from block 0 0 1 Items



execute store result score #inv_size var run clear @s carrot_on_a_stick[custom_data~{card:{}}] 0

execute if score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.0 with white_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.white","color":"white","italic":false},lore=[{"translate":"decks.selected","color":"gray","bold":false}]]
execute unless score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.0 with white_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.white","color":"white","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.9 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.9 with air

execute if score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.1 with red_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.red","color":"red","italic":false},lore=[{"translate":"decks.selected","color":"gray","bold":false}]]
execute unless score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.1 with red_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.red","color":"red","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.10 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.10 with air

execute if score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.2 with orange_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.orange","color":"gold","italic":false},lore=[{"translate":"decks.selected","color":"gray","bold":false}]]
execute unless score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.2 with orange_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.orange","color":"gold","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.11 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.11 with air

execute if score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.3 with yellow_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.yellow","color":"yellow","italic":false},lore=[{"translate":"decks.selected","color":"gray","bold":false}]]
execute unless score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.3 with yellow_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.yellow","color":"yellow","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.12 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.12 with air

execute if score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.4 with green_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.green","color":"green","italic":false},lore=[{"translate":"decks.selected","color":"gray","bold":false}]]
execute unless score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.4 with green_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.green","color":"green","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.13 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.13 with air

execute if score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.5 with cyan_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.cyan","color":"aqua","italic":false},lore=[{"translate":"decks.selected","color":"gray","bold":false}]]
execute unless score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.5 with cyan_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.cyan","color":"aqua","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.14 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.14 with air

execute if score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.6 with blue_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.blue","color":"blue","italic":false},lore=[{"translate":"decks.selected","color":"gray","bold":false}]]
execute unless score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.6 with blue_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.blue","color":"blue","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.15 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.15 with air

execute if score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.7 with purple_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.purple","color":"light_purple","italic":false},lore=[{"translate":"decks.selected","color":"gray","bold":false}]]
execute unless score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.7 with purple_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.purple","color":"light_purple","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.16 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.16 with air

execute if score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.8 with black_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.black","color":"dark_gray","italic":false},lore=[{"translate":"decks.selected","color":"gray","bold":false}]]
execute unless score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.8 with black_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.black","color":"dark_gray","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.17 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.17 with air

execute at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with leather[item_model=bundle,custom_data={gui:True,select:True},item_name={"translate":"decks.grab","color":"white","italic":false}]


execute if entity @s[tag=fast_open] at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.25 with tipped_arrow[custom_data={gui:True,fast_open:True},custom_name={"translate":"decks.fast_open","color":"green","italic":false},lore=[{"translate":"decks.fast_open.enabled","color":"green","bold":false}],potion_contents={"potion":"minecraft:swiftness"},tooltip_display={hidden_components:[potion_contents]}]
execute if entity @s[tag=!fast_open] at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.25 with spectral_arrow[custom_data={gui:True,fast_open:True},item_name={"translate":"decks.fast_open","color":"dark_gray","italic":false},lore=[{"translate":"decks.fast_open.disabled","color":"red","bold":false}]]