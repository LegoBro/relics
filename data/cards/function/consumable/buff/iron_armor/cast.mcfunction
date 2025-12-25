# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{text:" "},{"translate":"cast.use"},{text:" "},{"underlined":true,"translate":"card.iron_armor","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.iron_armor"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 8","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.iron_armor.lore.0","color":"white","italic":false},{"translate":"card.iron_armor.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 8
function cards:consumable/buff/iron_armor/activate
function main:player/use_card/store