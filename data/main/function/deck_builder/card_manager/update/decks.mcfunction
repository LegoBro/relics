execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data merge block ~ ~ ~ {Items:[]}
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data merge block ~1 ~ ~ {Items:[]}

# Display a deck

execute if score @s menu matches -1 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[0].item.components."minecraft:container"
execute if score @s menu matches -2 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[1].item.components."minecraft:container"
execute if score @s menu matches -3 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[2].item.components."minecraft:container"
execute if score @s menu matches -4 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[3].item.components."minecraft:container"
execute if score @s menu matches -5 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[4].item.components."minecraft:container"
execute if score @s menu matches -6 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[5].item.components."minecraft:container"
execute if score @s menu matches -7 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[6].item.components."minecraft:container"
execute if score @s menu matches -8 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[7].item.components."minecraft:container"
execute if score @s menu matches -9 run data modify storage helper:container container set from entity @s EnderItems[0].components."minecraft:container"[8].item.components."minecraft:container"

function helper:convert_container_data

execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from storage helper:container items

execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[1].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[2].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[3].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[4].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[5].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[6].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[7].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[8].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[9].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[10].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[11].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[12].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[13].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[14].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[15].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[16].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[17].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[18].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[19].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[20].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[21].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[22].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[23].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[24].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[25].components."minecraft:custom_data".gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[26].components."minecraft:custom_data".gui set value True

execute store result score #inv_size var run data get entity @s Inventory

execute if score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.0 with white_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.white","color":"white","italic":false},lore=[{"translate":"decks.grab","color":"gray","bold":false}]]
execute unless score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.0 with white_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.white","color":"white","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.9 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.9 with air

execute if score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.1 with red_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.red","color":"red","italic":false},lore=[{"translate":"decks.grab","color":"gray","bold":false}]]
execute unless score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.1 with red_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.red","color":"red","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.10 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.10 with air

execute if score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.2 with orange_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.orange","color":"gold","italic":false},lore=[{"translate":"decks.grab","color":"gray","bold":false}]]
execute unless score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.2 with orange_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.orange","color":"gold","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.11 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.11 with air

execute if score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.3 with yellow_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.yellow","color":"yellow","italic":false},lore=[{"translate":"decks.grab","color":"gray","bold":false}]]
execute unless score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.3 with yellow_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.yellow","color":"yellow","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.12 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.12 with air

execute if score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.4 with green_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.green","color":"green","italic":false},lore=[{"translate":"decks.grab","color":"gray","bold":false}]]
execute unless score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.4 with green_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.green","color":"green","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.13 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.13 with air

execute if score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.5 with cyan_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.cyan","color":"aqua","italic":false},lore=[{"translate":"decks.grab","color":"gray","bold":false}]]
execute unless score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.5 with cyan_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.cyan","color":"aqua","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.14 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.14 with air

execute if score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.6 with blue_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.blue","color":"blue","italic":false},lore=[{"translate":"decks.grab","color":"gray","bold":false}]]
execute unless score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.6 with blue_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.blue","color":"blue","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.15 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.15 with air

execute if score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.7 with purple_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.purple","color":"light_purple","italic":false},lore=[{"translate":"decks.grab","color":"gray","bold":false}]]
execute unless score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.7 with purple_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.purple","color":"light_purple","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.16 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.16 with air

execute if score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.8 with black_shulker_box[custom_data={gui:True,grab:True},item_name={"translate":"decks.black","color":"dark_gray","italic":false},lore=[{"translate":"decks.grab","color":"gray","bold":false}]]
execute unless score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.8 with black_stained_glass[custom_data={gui:True,deck:True},item_name={"translate":"decks.black","color":"dark_gray","italic":false},lore=[{"translate":"decks.view","color":"gray","bold":false}]]
execute if score #inv_size var matches 27 if score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.17 with feather[item_name={"translate":"decks.overwrite","color":"white","italic":false},lore=[{"translate":"decks.overwrite.click","color":"gray","bold":false}]]
execute unless score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.17 with air

execute if score @s deck matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with white_shulker_box[custom_data={gui:True,select:True},item_name={"translate":"decks.selected","color":"white","italic":false},lore=[{"translate":"decks.change","color":"gray","bold":false}]]
execute if score @s deck matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with red_shulker_box[custom_data={gui:True,select:True},item_name={"translate":"decks.selected","color":"red","italic":false},lore=[{"translate":"decks.change","color":"gray","bold":false}]]
execute if score @s deck matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with orange_shulker_box[custom_data={gui:True,select:True},item_name={"translate":"decks.selected","color":"gold","italic":false},lore=[{"translate":"decks.change","color":"gray","bold":false}]]
execute if score @s deck matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with yellow_shulker_box[custom_data={gui:True,select:True},item_name={"translate":"decks.selected","color":"yellow","italic":false},lore=[{"translate":"decks.change","color":"gray","bold":false}]]
execute if score @s deck matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with green_shulker_box[custom_data={gui:True,select:True},item_name={"translate":"decks.selected","color":"green","italic":false},lore=[{"translate":"decks.change","color":"gray","bold":false}]]
execute if score @s deck matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with cyan_shulker_box[custom_data={gui:True,select:True},item_name={"translate":"decks.selected","color":"aqua","italic":false},lore=[{"translate":"decks.change","color":"gray","bold":false}]]
execute if score @s deck matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with blue_shulker_box[custom_data={gui:True,select:True},item_name={"translate":"decks.selected","color":"blue","italic":false},lore=[{"translate":"decks.change","color":"gray","bold":false}]]
execute if score @s deck matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with purple_shulker_box[custom_data={gui:True,select:True},item_name={"translate":"decks.selected","color":"light_purple","italic":false},lore=[{"translate":"decks.change","color":"gray","bold":false}]]
execute if score @s deck matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with black_shulker_box[custom_data={gui:True,select:True},item_name={"translate":"decks.selected","color":"dark_gray","italic":false},lore=[{"translate":"decks.change","color":"gray","bold":false}]]


execute if entity @s[tag=fast_open] at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.25 with tipped_arrow[custom_data={gui:True,fast_open:True},custom_name={"translate":"decks.fast_open","color":"green","italic":false},lore=[{"translate":"decks.fast_open.enabled","color":"green","bold":false}],potion_contents={"potion":"minecraft:swiftness"},tooltip_display={hidden_components:[potion_contents]}]
execute if entity @s[tag=!fast_open] at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.25 with spectral_arrow[custom_data={gui:True,fast_open:True},item_name={"translate":"decks.fast_open","color":"dark_gray","italic":false},lore=[{"translate":"decks.fast_open.disabled","color":"red","bold":false}]]