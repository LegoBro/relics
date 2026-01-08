# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{text:" "},{"translate":"cast.use"},{text:" "},{"underlined":true,"translate":"card.iron_spear","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"#E0673A","translate":"card.iron_spear"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 12","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.iron_spear.lore.0","color":"white","italic":false},{"translate":"card.iron_spear.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 12
function cards:consumable/buff/iron_spear/activate
function main:player/use_card/store