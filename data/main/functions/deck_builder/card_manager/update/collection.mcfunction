## Displays the cards the player has collected
# Reset chest
data merge block 0 0 0 {Items:[]}
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data merge block ~ ~ ~ {Items:[]}
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run data merge block ~1 ~ ~ {Items:[]}
# Pages of RCN sorted cards (Rarity, Cost, Name)
execute if score @s menu matches 0 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/rcn_0
execute if score @s menu matches 1 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/rcn_1
execute if score @s menu matches 2 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/rcn_2
execute if score @s menu matches 3 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/rcn_3

execute if score @s menu matches 10 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/crn_0
execute if score @s menu matches 11 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/crn_1
execute if score @s menu matches 12 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/crn_2
execute if score @s menu matches 13 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/crn_3

execute if score @s menu matches 20 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/nrc_0
execute if score @s menu matches 21 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/nrc_1
execute if score @s menu matches 22 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/nrc_2
execute if score @s menu matches 23 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/nrc_3

execute if score @s menu matches 30 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/tcr_0
execute if score @s menu matches 31 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/tcr_1
execute if score @s menu matches 32 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/tcr_2
execute if score @s menu matches 33 at @e[type=marker,tag=id,tag=deck.builder.marker] run function cards:sorted/tcr_3

# Update GUI
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.21 with coal{display:{Name:'{"translate":"collection.left","color":"white","italic":false}'}}
execute at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.23 with charcoal{display:{Name:'{"translate":"collection.right","color":"white","italic":false}'}}
execute if score @s menu matches 0..8 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with spyglass{display:{Name:'{"translate":"collection.search","color":"white","italic":false}',Lore:['{"translate":"collection.search.rarity","color":"gold","bold":false}']}}
execute if score @s menu matches 10..18 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with spyglass{display:{Name:'{"translate":"collection.search","color":"white","italic":false}',Lore:['{"translate":"collection.search.cost","color":"green","bold":false}']}}
execute if score @s menu matches 20..28 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with spyglass{display:{Name:'{"translate":"collection.search","color":"white","italic":false}',Lore:['{"translate":"collection.search.name","color":"blue","bold":false}']}}
execute if score @s menu matches 30..38 at @e[type=marker,tag=id,tag=deck.builder.marker] run item replace block ~1 ~ ~ container.22 with spyglass{display:{Name:'{"translate":"collection.search","color":"white","italic":false}',Lore:['{"translate":"collection.search.type","color":"light_purple","bold":false}']}}