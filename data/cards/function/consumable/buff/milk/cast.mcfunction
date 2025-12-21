# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.milk","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.milk"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.milk.lore.0","color":"white","italic":false},{"translate":"card.milk.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 8
function cards:consumable/buff/milk/activate
function main:player/use_card/store