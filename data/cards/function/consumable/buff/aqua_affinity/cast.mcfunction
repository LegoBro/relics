# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{text:" "},{"translate":"cast.use"},{text:" "},{"underlined":true,"translate":"card.aqua_affinity","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"#FBB1F2","translate":"card.aqua_affinity"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 2","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.aqua_affinity.lore.0","color":"white","italic":false},{"translate":"card.aqua_affinity.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 2
function cards:consumable/buff/aqua_affinity/activate
function main:player/use_card/store