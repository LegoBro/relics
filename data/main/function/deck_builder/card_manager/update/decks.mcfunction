execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data merge block ~ ~ ~ {Items:[]}
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data merge block ~1 ~ ~ {Items:[]}

# Display a deck
execute if score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[0].tag.BlockEntityTag.Items
execute if score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[1].tag.BlockEntityTag.Items
execute if score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[2].tag.BlockEntityTag.Items
execute if score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[3].tag.BlockEntityTag.Items
execute if score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[4].tag.BlockEntityTag.Items
execute if score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[5].tag.BlockEntityTag.Items
execute if score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[6].tag.BlockEntityTag.Items
execute if score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[7].tag.BlockEntityTag.Items
execute if score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items[8].tag.BlockEntityTag.Items

execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[0].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[1].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[2].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[3].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[4].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[5].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[6].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[7].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[8].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[9].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[10].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[11].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[12].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[13].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[14].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[15].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[16].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[17].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[18].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[19].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[20].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[21].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[22].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[23].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[24].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[25].tag.gui set value True
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data modify block ~ ~ ~ Items[26].tag.gui set value True

execute store result score #inv_size var run data get entity @s Inventory

execute if score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.0 with white_shulker_box{gui:True,grab:True,display:{Name:'{"translate":"decks.white","color":"white","italic":false}',Lore:['{"translate":"decks.grab","color":"gray","bold":false}']}}
execute unless score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.0 with white_stained_glass{gui:True,deck:True,display:{Name:'{"translate":"decks.white","color":"white","italic":false}',Lore:['{"translate":"decks.view","color":"gray","bold":false}']}}
execute if score #inv_size var matches 27 if score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.9 with feather{display:{Name:'{"translate":"decks.overwrite","color":"white","italic":false}',Lore:['{"translate":"decks.overwrite.click","color":"gray","bold":false}']}}
execute unless score @s menu matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.9 with air

execute if score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.1 with red_shulker_box{gui:True,grab:True,display:{Name:'{"translate":"decks.red","color":"red","italic":false}',Lore:['{"translate":"decks.grab","color":"gray","bold":false}']}}
execute unless score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.1 with red_stained_glass{gui:True,deck:True,display:{Name:'{"translate":"decks.red","color":"red","italic":false}',Lore:['{"translate":"decks.view","color":"gray","bold":false}']}}
execute if score #inv_size var matches 27 if score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.10 with feather{display:{Name:'{"translate":"decks.overwrite","color":"white","italic":false}',Lore:['{"translate":"decks.overwrite.click","color":"gray","bold":false}']}}
execute unless score @s menu matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.10 with air

execute if score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.2 with orange_shulker_box{gui:True,grab:True,display:{Name:'{"translate":"decks.orange","color":"gold","italic":false}',Lore:['{"translate":"decks.grab","color":"gray","bold":false}']}}
execute unless score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.2 with orange_stained_glass{gui:True,deck:True,display:{Name:'{"translate":"decks.orange","color":"gold","italic":false}',Lore:['{"translate":"decks.view","color":"gray","bold":false}']}}
execute if score #inv_size var matches 27 if score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.11 with feather{display:{Name:'{"translate":"decks.overwrite","color":"white","italic":false}',Lore:['{"translate":"decks.overwrite.click","color":"gray","bold":false}']}}
execute unless score @s menu matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.11 with air

execute if score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.3 with yellow_shulker_box{gui:True,grab:True,display:{Name:'{"translate":"decks.yellow","color":"yellow","italic":false}',Lore:['{"translate":"decks.grab","color":"gray","bold":false}']}}
execute unless score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.3 with yellow_stained_glass{gui:True,deck:True,display:{Name:'{"translate":"decks.yellow","color":"yellow","italic":false}',Lore:['{"translate":"decks.view","color":"gray","bold":false}']}}
execute if score #inv_size var matches 27 if score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.12 with feather{display:{Name:'{"translate":"decks.overwrite","color":"white","italic":false}',Lore:['{"translate":"decks.overwrite.click","color":"gray","bold":false}']}}
execute unless score @s menu matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.12 with air

execute if score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.4 with green_shulker_box{gui:True,grab:True,display:{Name:'{"translate":"decks.green","color":"green","italic":false}',Lore:['{"translate":"decks.grab","color":"gray","bold":false}']}}
execute unless score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.4 with green_stained_glass{gui:True,deck:True,display:{Name:'{"translate":"decks.green","color":"green","italic":false}',Lore:['{"translate":"decks.view","color":"gray","bold":false}']}}
execute if score #inv_size var matches 27 if score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.13 with feather{display:{Name:'{"translate":"decks.overwrite","color":"white","italic":false}',Lore:['{"translate":"decks.overwrite.click","color":"gray","bold":false}']}}
execute unless score @s menu matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.13 with air

execute if score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.5 with cyan_shulker_box{gui:True,grab:True,display:{Name:'{"translate":"decks.cyan","color":"aqua","italic":false}',Lore:['{"translate":"decks.grab","color":"gray","bold":false}']}}
execute unless score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.5 with cyan_stained_glass{gui:True,deck:True,display:{Name:'{"translate":"decks.cyan","color":"aqua","italic":false}',Lore:['{"translate":"decks.view","color":"gray","bold":false}']}}
execute if score #inv_size var matches 27 if score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.14 with feather{display:{Name:'{"translate":"decks.overwrite","color":"white","italic":false}',Lore:['{"translate":"decks.overwrite.click","color":"gray","bold":false}']}}
execute unless score @s menu matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.14 with air

execute if score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.6 with blue_shulker_box{gui:True,grab:True,display:{Name:'{"translate":"decks.blue","color":"blue","italic":false}',Lore:['{"translate":"decks.grab","color":"gray","bold":false}']}}
execute unless score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.6 with blue_stained_glass{gui:True,deck:True,display:{Name:'{"translate":"decks.blue","color":"blue","italic":false}',Lore:['{"translate":"decks.view","color":"gray","bold":false}']}}
execute if score #inv_size var matches 27 if score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.15 with feather{display:{Name:'{"translate":"decks.overwrite","color":"white","italic":false}',Lore:['{"translate":"decks.overwrite.click","color":"gray","bold":false}']}}
execute unless score @s menu matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.15 with air

execute if score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.7 with purple_shulker_box{gui:True,grab:True,display:{Name:'{"translate":"decks.purple","color":"light_purple","italic":false}',Lore:['{"translate":"decks.grab","color":"gray","bold":false}']}}
execute unless score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.7 with purple_stained_glass{gui:True,deck:True,display:{Name:'{"translate":"decks.purple","color":"light_purple","italic":false}',Lore:['{"translate":"decks.view","color":"gray","bold":false}']}}
execute if score #inv_size var matches 27 if score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.16 with feather{display:{Name:'{"translate":"decks.overwrite","color":"white","italic":false}',Lore:['{"translate":"decks.overwrite.click","color":"gray","bold":false}']}}
execute unless score @s menu matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.16 with air

execute if score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.8 with black_shulker_box{gui:True,grab:True,display:{Name:'{"translate":"decks.black","color":"dark_gray","italic":false}',Lore:['{"translate":"decks.grab","color":"gray","bold":false}']}}
execute unless score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.8 with black_stained_glass{gui:True,deck:True,display:{Name:'{"translate":"decks.black","color":"dark_gray","italic":false}',Lore:['{"translate":"decks.view","color":"gray","bold":false}']}}
execute if score #inv_size var matches 27 if score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.17 with feather{display:{Name:'{"translate":"decks.overwrite","color":"white","italic":false}',Lore:['{"translate":"decks.overwrite.click","color":"gray","bold":false}']}}
execute unless score @s menu matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.17 with air

execute if score @s deck matches -1 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with white_shulker_box{gui:True,select:True,display:{Name:'{"translate":"decks.selected","color":"white","italic":false}',Lore:['{"translate":"decks.change","color":"gray","bold":false}']}}
execute if score @s deck matches -2 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with red_shulker_box{gui:True,select:True,display:{Name:'{"translate":"decks.selected","color":"red","italic":false}',Lore:['{"translate":"decks.change","color":"gray","bold":false}']}}
execute if score @s deck matches -3 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with orange_shulker_box{gui:True,select:True,display:{Name:'{"translate":"decks.selected","color":"gold","italic":false}',Lore:['{"translate":"decks.change","color":"gray","bold":false}']}}
execute if score @s deck matches -4 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with yellow_shulker_box{gui:True,select:True,display:{Name:'{"translate":"decks.selected","color":"yellow","italic":false}',Lore:['{"translate":"decks.change","color":"gray","bold":false}']}}
execute if score @s deck matches -5 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with green_shulker_box{gui:True,select:True,display:{Name:'{"translate":"decks.selected","color":"green","italic":false}',Lore:['{"translate":"decks.change","color":"gray","bold":false}']}}
execute if score @s deck matches -6 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with cyan_shulker_box{gui:True,select:True,display:{Name:'{"translate":"decks.selected","color":"aqua","italic":false}',Lore:['{"translate":"decks.change","color":"gray","bold":false}']}}
execute if score @s deck matches -7 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with blue_shulker_box{gui:True,select:True,display:{Name:'{"translate":"decks.selected","color":"blue","italic":false}',Lore:['{"translate":"decks.change","color":"gray","bold":false}']}}
execute if score @s deck matches -8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with purple_shulker_box{gui:True,select:True,display:{Name:'{"translate":"decks.selected","color":"light_purple","italic":false}',Lore:['{"translate":"decks.change","color":"gray","bold":false}']}}
execute if score @s deck matches -9 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with black_shulker_box{gui:True,select:True,display:{Name:'{"translate":"decks.selected","color":"dark_gray","italic":false}',Lore:['{"translate":"decks.change","color":"gray","bold":false}']}}
