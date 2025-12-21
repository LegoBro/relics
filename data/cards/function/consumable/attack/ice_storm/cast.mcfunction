# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{"text":" uses "},{"underlined":true,"translate":"card.ice_storm","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"green","translate":"card.ice_storm"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 16","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.ice_storm.lore.0","color":"white","italic":false},{"translate":"card.ice_storm.lore.1","color":"white","italic":false},{"translate":"card.ice_storm.lore.2","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 16
function cards:consumable/attack/ice_storm/activate
function main:player/use_card/store