# Casts the consumable card
tellraw @a[tag=id] {"translate":"cast.use",color:green,"with":[{"selector":"@s"},{"underlined":true,"translate":"card.repeater","hover_event":{"action":"show_item","id":"minecraft:carrot_on_a_stick","count":1,"components":{"minecraft:item_name":{"color":"#E0673A","translate":"card.repeater"},"minecraft:lore":[[{"translate":"cost","italic":false,"color":"white"},{"text":" 3","italic":false,"color":"white"}],{"text":"","color":"white","italic":false},{"translate":"card.repeater.lore.0","color":"white","italic":false},{"translate":"card.repeater.lore.1","color":"white","italic":false}]}}}]}
scoreboard players remove @s saturation 3
function cards:consumable/buff/repeater/activate
function main:player/use_card/store