# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.spectral_arrow","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.spectral_arrow"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.spectral_arrow.lore.0","color":"white","italic":false},{"translate":"card.spectral_arrow.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 8
function cards:consumable/buff/spectral_arrow/activate
function main:player/use_card/store