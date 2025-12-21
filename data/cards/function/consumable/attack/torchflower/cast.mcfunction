# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.torchflower","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"#FBB1F2","translate":"card.torchflower"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.torchflower.lore.0","color":"white","italic":false},{"translate":"card.torchflower.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 5
function cards:consumable/attack/torchflower/activate
function main:player/use_card/store