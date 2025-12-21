# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.anvil","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.anvil"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 7","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.anvil.lore.0","color":"white","italic":false},{"translate":"card.anvil.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 7
function cards:consumable/attack/anvil/activate
function main:player/use_card/store