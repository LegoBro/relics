# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{text:" "},{"translate":"cast.use"},{text:" "},{"underlined":true,"translate":"card.bread","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.bread"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 0","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.bread.lore.0","color":"white","italic":false},{"translate":"card.bread.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 0
function cards:consumable/buff/bread/activate
function main:player/use_card/store