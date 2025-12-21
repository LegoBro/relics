# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.golden_carrot","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.golden_carrot"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.golden_carrot.lore.0","color":"white","italic":false},{"translate":"card.golden_carrot.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 3
function cards:consumable/buff/golden_carrot/activate
function main:player/use_card/store