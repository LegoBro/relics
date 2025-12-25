# Casts the consumable card
tellraw @a[tag=id] [{"selector":"@s"},{text:" "},{"translate":"cast.use"},{text:" "},{"underlined":true,"translate":"card.frog_eggs","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"#018a73","translate":"card.frog_eggs"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 5","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.frog_eggs.lore.0","color":"white","italic":false},{"translate":"card.frog_eggs.lore.1","color":"white","italic":false}]}}}]
scoreboard players remove @s saturation 5
function cards:consumable/buff/frog_eggs/activate
function main:player/use_card/store