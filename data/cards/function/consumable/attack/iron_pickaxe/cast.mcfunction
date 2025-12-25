# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{text:" "},{"translate":"cast.use"},{text:" "},{"underlined":true,"translate":"card.iron_pickaxe","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.iron_pickaxe"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.iron_pickaxe.lore.0","color":"white","italic":false},{"translate":"card.iron_pickaxe.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 3
function cards:consumable/attack/iron_pickaxe/activate
function main:player/use_card/store